#if 0
#include <string>
#include <string.h>
#include <iostream>
#include <algorithm>
#include <fstream>
#include <unistd.h>
#include "client.hpp"
#include "sstream"
#include <string>
#include <thread>
#include <chrono>
#include "parser.hpp"
#include "clockmanger.hpp"
#include <map>
/*
> GET /v1/timingsByCity?city=Giza&country=Arab%20Rebuplic%20Egypt&method=8 HTTP/1.1
> Host: api.aladhan.com
> User-Agent: curl/7.68.0
> Accept:
 Content-Type: application/json
< Content-Length: 1194


**/
int main()
{

    Client client;
    while (1)
    {

        client.init("api.aladhan.com", 80);
        // get public ip
        client.connectToServer();
        /* adjust http request*/
        std::stringstream ss;
        ss << "GET /v1/timingsByCity?city=Giza&country=Arab%20Rebuplic%20Egypt&method=8"
           << " HTTP/1.1\r\n"
           << "Host: api.aladhan.com\r\n"
           << "Content-Type: application/json\r\n"
           << "\r\n\r\n";
        std::string request = ss.str();
        client.sendrequest(request);
        std::string body = client.readRespose();
        // std::cout << "body " << body << std::endl;

        std::cout << "--------------------------------" << std::endl;
        std::cout << " الـصـلــولا تــ، الـخـا مــسـ " << std::endl;
        std::cout << "--------------------------------" << std::endl;
        std::map<std::string, std::string> ret = Parser::list_prayers(body);
        std::cout << "time now : " << ClockManger::Clock_now() << std::endl;
        client.closeConnection();
        std::this_thread::sleep_for(std::chrono::milliseconds(3000));
    }
}
#endif

#if 1
#include <string>
#include <string.h>
#include <iostream>
#include <algorithm>
#include <fstream>
#include <unistd.h>
#include "client.hpp"
#include "sstream"
#include <string>
#include <thread>
#include <chrono>
#include <map>
#include<stdio.h>
#include "parser.hpp"
#include "clockmanger.hpp"
#include <SFML/Audio.hpp>
#include"services.hpp"
#include"UI_Manger.hpp"

using std::cout;
using std::cin;
using std::endl;
std::map<std::string, std::string> prayers;

void play_azan(){
    sf::SoundBuffer buf;
    if (!buf.loadFromFile(GetCurrentWorkingDir().substr(0,GetCurrentWorkingDir().size()-5)+"/azan.wav")) {//5 represent "build" keyword size
        std::cerr << "Fatal error: Could not load sound file.";
        return ;
    }
    sf::Sound sound(buf);
    sound.play();
    sf::sleep(sf::milliseconds(1000*60*3+6*1000));//audio duration
}

void check_Azan_time(){
    while (1)
    {
        if(ClockManger::Clock_now()==prayers["Dhuhr"] ||
            ClockManger::Clock_now()==prayers["Asr"] ||
            ClockManger::Clock_now()==prayers["Maghrib"] ||
            ClockManger::Clock_now()==prayers["Isha"] ||
            ClockManger::Clock_now()==prayers["Fajr"]
        ){
            std::string current_prayer;
            for(auto it = prayers.begin(); it != prayers.end(); ++it)
            {
                if(it->second == ClockManger::Clock_now()){
                    current_prayer=it->first;
                    break;
                }
            }
            cout<<"--> current prayer : "<<current_prayer<<endl;
            cout<<"--> Come to prayer\n--> Come for the gain\n";
            std::thread aa(play_azan);
            aa.join();
        }
    }
}

std::string create_request(std::string city,std::string country,int method){
    std::string x = " ", y = "%20";
    size_t pos;
    while ((pos = city.find(x)) != std::string::npos) {
        city.replace(pos, 1, y);
    }
    while ((pos = country.find(x)) != std::string::npos) {
        country.replace(pos, 1, y);
    }
    std::stringstream ss;
    ss << "GET /v1/timingsByCity?city="
    <<city
    <<"&country="
    <<country
    <<"&method="
    <<(char)('0'+method)
    << " HTTP/1.1\r\n"
    << "Host: api.aladhan.com\r\n"
    << "Content-Type: application/json\r\n"
    << "\r\n\r\n";
    return ss.str();
}

void update_prayers(std::map<std::string, std::string> &prayers_,std::string city,std::string country,int method){
    std::string request=create_request(city,country,method);
    //cout<<request<<endl;
    //cin.ignore(); cin.get();
    ////////////////////////
        Client client;
        client.init("api.aladhan.com", 80);
        // get public ip
        client.connectToServer();
        client.sendrequest(request);
        std::string body = client.readRespose();
    ///////////////////////
    Parser p;
    prayers_.clear();
    prayers_= p.list_prayers(body);
}

int main()
{
    
    //test
    // prayers["Dhuhr"]="00:02";
    // prayers["Asr"] ="23:17";
    // prayers["Maghrib"] ="23:22";
    // prayers["Isha"] ="23:52";
    // prayers["Fajr"]="23:57";
    
    //init
    std::string city="cairo";
    std::string country="Egypt";
    int calculation_method=5; //Egyptian General Authority of Survey
    update_prayers(prayers,city,country,calculation_method);
    std::thread azan_thread(check_Azan_time);
    UI_Manger::welcome_message();

    int input;
    while (1)
    {
        input=UI_Manger::home_option();

        if(input==1){
            update_prayers(prayers,city,country,calculation_method);
            UI_Manger::show_prayers(prayers);
        }else if(input==2){
            UI_Manger::show_time(ClockManger::Clock_now());
        }else if(input ==3){
            UI_Manger::show_current_config(city,country,calculation_method);
        }else if(input==4){
           UI_Manger::edit_city_country(city,country);
           update_prayers(prayers,city,country,calculation_method);
        }else if(input==5){
            UI_Manger::edit_calc_method(calculation_method);
            update_prayers(prayers,city,country,calculation_method);
        }else if(input==9){
            return 0;
        }else{
            continue;
        }
        
        cout<<endl<<"press Enter to back to Main"<<endl;
        cin.ignore(); cin.get(); 
        
    }
    return 0;
}

#endif