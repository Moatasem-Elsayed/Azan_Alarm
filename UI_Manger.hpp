#include<map>
#define CLEAR 1
class UI_Manger{
private:
    static void reset_screen();
public :
    static void welcome_message();
    static int home_option();
    static void show_prayers(std::map<std::string, std::string> &prayers);
    static void show_current_config(std::string city,std::string country,int method);
    static void edit_city_country(std::string&city,std::string&country);
    static void edit_calc_method(int &method);
    static void show_time(std::string time);
};