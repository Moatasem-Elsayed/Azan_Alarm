#include <iostream>
#include <algorithm>
#include <string>
#include <thread>
#include <chrono>
class ClockManger
{
public:
    ClockManger() = default;
    static std::string Clock_now();
};