#include <string>
#include <iostream>
using namespace std;

enum charType {upper, lower, number, symbol};

char charGen(int seed, int type);
string passGen();

string passGen() {
	int len=10;
	string passwd = "";
	unsigned int thisChar;
	int insertIndex=0;

	unsigned seed = (unsigned) time(NULL);
	

	for(int i =0; i<len; i++){
		srand(seed+thisChar);
		thisChar = 33 + rand() % 94;
		passwd = passwd + (char) thisChar;
	}
	for(int u=0; u<4; u++){
		insertIndex= insertIndex+1 + rand() % (len + u-3-insertIndex-1);
		thisChar = charGen(thisChar, u);
		passwd[insertIndex]= thisChar;
	}
	return passwd;
}

char charGen(int seed, int type){
	char newChar;
	srand(seed);
	switch(type){
		case 0:
			newChar = (char) (65+ rand() % 26);
			break;
		case 1:
			newChar =  (char) (97 + rand() %26);
			break;
		case 2:
			newChar = (char) (48+ rand() % 10);
			break;
		case 3:
			newChar = (char) (33+ rand() % 15);
			break;
	}
	return newChar;

}


int main() {
	std::cout << passGen();
	return 0;
}


