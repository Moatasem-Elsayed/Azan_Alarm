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