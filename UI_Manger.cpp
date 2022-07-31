#include"UI_Manger.hpp"
#include<iostream>
#include<vector>
#include<thread>
using std::cout;
using std::endl;
using std::cin;

void UI_Manger::reset_screen()
{
#ifdef CLEAR
#ifdef __linux__
    std::system("clear");
#else
    std::system("cls");
#endif
#endif
}

void UI_Manger::welcome_message(){
    reset_screen();
    cout << "-------------------------" << endl;
    cout << " welcome to AZAN ALARRM " << endl;
    cout << "-------------------------" << endl;
    std::this_thread::sleep_for(std::chrono::seconds(1));
}

int UI_Manger::home_option(){
        reset_screen();
        cout<<"-Enter option"<<endl;
        cout<<"1-prayer times?"<<endl;
        cout<<"2-clock now?"<<endl;
        cout<<"3-current config?"<<endl;
        cout<<"4-change city & country?"<<endl;
        cout<<"5-change calculation method?"<<endl;
        cout<<"9-e/E for exit"<<endl;
        int input;
        cin>>input;
        return input;
}
void UI_Manger::show_prayers(std::map<std::string, std::string> &prayers){
    reset_screen();
    cout << "--------------------------------" << endl;
    cout << " الـصـلــولا تــ، الـخـا مــسـ " << endl;
    cout << "--------------------------------" << endl;
    for (auto it = prayers.begin(); it !=prayers.end(); it++)
    {
        cout<<it->first<<" "<<it->second<<endl;
    }
}
void UI_Manger::show_current_config(std::string city,std::string country,int method){
    reset_screen();
    std::vector<std::string>methods={
        " ",
         "University of Islamic Sciences, Karachi",
         "Islamic Society of North America",
         "Muslim World League",
         "Umm Al-Qura University, Makkah",
         "Egyptian General Authority of Survey",
         "Institute of Geophysics, University of Tehran",
         "Gulf Region",
         "Kuwait",
         "Qatar",
         "Majlis Ugama Islam Singapura, Singapore",
         "Union Organization islamic de France",
         "Diyanet İşleri Başkanl1ğ1, Turkey",
         "Spiritual Administration of Muslims of Russia"
    };
    cout<<"current configuration"<<endl;
    cout<< "city : " <<city<<endl;
    cout<< "country : " <<country<<endl;
    cout<< "calculation method : " <<methods[(method)]<<endl;
}

void UI_Manger::edit_city_country(std::string&city,std::string&country){
    reset_screen();
    cout<<"enter city"<<endl;
    cin>>city;
    cout<<"enter country"<<endl;
    cin>>country;
}
void UI_Manger::edit_calc_method(int &method){
    reset_screen();
     
    cout<<"1-University of Islamic Sciences, Karachi"<<endl<<
         "2-Islamic Society of North America"<<endl<<
         "3-Muslim World League"<<endl<<
         "4-Umm Al-Qura University, Makkah"<<endl<<
         "5-Egyptian General Authority of Survey"<<endl<<
         "7-Institute of Geophysics, University of Tehran"<<endl<<
         "8-Gulf Region"<<endl<<
         "9-Kuwait"<<endl<<
         "10-Qatar"<<endl<<
         "11-Majlis Ugama Islam Singapura, Singapore"<<endl<<
         "12-Union Organization islamic de France"<<endl<<
         "13-Diyanet İşleri Başkanl1ğ1, Turkey"<<endl<<
         "14-Spiritual Administration of Muslims of Russia"<<endl;
    cout<<"enter method number"<<endl;
    cin>>method;
}

void UI_Manger::show_time(std::string time){
    reset_screen();
    cout << "time now : " << time << endl;
}