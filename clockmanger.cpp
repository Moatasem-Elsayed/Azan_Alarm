
#include "clockmanger.hpp"
std::string ClockManger::Clock_now()
{
    auto time = std::chrono::system_clock::now();
    std::time_t timenow = std::chrono::system_clock::to_time_t(time);

    std::string timestr(std::ctime(&timenow));
    timestr.pop_back();
    auto it = timestr.find(":");
    it -= 2;
    return timestr.substr(it, 5);//to get hours:min only
}