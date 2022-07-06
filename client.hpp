#include <iostream>
#include <ctype.h>
#include <cstring>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <unistd.h>
#include <sstream>
#include <fstream>
#include <string>
#define MAX_RESPONSE 10000
class Client
{

public:
    Client() = default;

    void init(std::string url, int port);
    void connectToServer();
    void help_HttpRequest();
    void sendrequest(std::string request);
    std::string readRespose();
    void closeConnection();

private:
    struct sockaddr_in m_clientaddr;
    int m_sock;
    int m_PORT;
    char data[MAX_RESPONSE];
};