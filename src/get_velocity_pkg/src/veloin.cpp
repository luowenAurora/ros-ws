#include<string>
#include<iostream>
#include<fstream>
using namespace std;
int main(){
    double lin,ang;
    ofstream fout;
    while(!cin.eof()){
        cout<<"请输入线速度和角速度：";
        cin>>lin>>ang;
        fout.open("/home/agilex/ros_ws/src/get_velocity_pkg/src/velocity.txt");
        fout<<lin<<" "<<ang<<endl;
        fout.close();
    }
}