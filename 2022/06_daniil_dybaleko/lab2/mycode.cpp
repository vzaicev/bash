#include <iostream>;
#include "House.h";
using namespace std;
void main()
{
	House* spis;
	int n;
	cout << "Input a number of houses: "; cin >> n;
	spis = new House[n];
	for (int i = 0; i < n; i++) {
		cout << "==============================" << endl;
		spis[i].show();
		
	}
	spis1(spis, n);
	spis2(spis, n);
	spis3(spis, n);
	delete[] spis;
	cout << "press any key!";
	system("pause");
	return;
House* spis;
	int n;
	cout << "Input a number of houses: "; cin >> n;
	spis = new House[n];
	for (int i = 0; i < n; i++) {
		cout << "==============================" << endl;
		spis[i].show();
		
	}
	spis1(spis, n);
	spis2(spis, n);
	spis3(spis, n);
	delete[] spis;
	cout << "press any key!";
	system("pause");
	return;
House* spis;
	int n;
	cout << "Input a number of houses: "; cin >> n;
	spis = new House[n];
	for (int i = 0; i < n; i++) {
		cout << "==============================" << endl;
		spis[i].show();
		
	}
	spis1(spis, n);
	spis2(spis, n);
	spis3(spis, n);
	delete[] spis;
	cout << "press any key!";
	system("pause");
	return;
}