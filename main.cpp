#include <iostream>
#include <fstream>
using namespace std;

int main(){
	fstream o("GaSchedule.cfg",ios::app);
	o<<"HEllo";
	o.close();
	return 0;
}