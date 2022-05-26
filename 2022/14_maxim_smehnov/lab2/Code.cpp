#include <iostream>
#include <conio.h>
#include"Tvector.h"

using namespace std;
class Polynom {
    int n;
    double* koef;
public:
    Polynom(); //конструкторы
    Polynom(int k);
    Polynom(int k, double* mas);
    Polynom(const Polynom& ob); //конструктор копирования
    ~Polynom() { delete[]koef; }
    void GiveMemory(int k);
    void SetPolynom(int k, double* mas);
    void SetDegree(int k) { n = k; }; //установить степень
    void CalculateValue(double x);  //вычислить значение
    int GetDegree() { return n; };   //получить степень
    double GetOneCoefficient(int i) { return(koef[i]); };
    Polynom operator+(Polynom ob); //перегрузка операторов
    Polynom operator*(Polynom ob);
    double& operator[](int i) { return(koef[i]); }//перегрузка []
    Polynom& operator = (const Polynom p) {
        if (&p == this) return *this;
        if (koef) delete[] koef;
        n = p.n;
        koef = new double[p.n + 1];
        for (int i = 0; i <= p.n; i++)
            koef[i] = p.koef[i];
        return *this;
    }
    friend ostream& operator<<(ostream& mystream, Polynom& ob);
    friend istream& operator>>(istream& mystream, Polynom& ob);
    int min(int n, int m)
    {
        return (n < m) ? n : m;
    }
    int max(int n, int m)
    {
        return (n > m) ? n : m;
    }
};
//*********** Polynom() **********************************
Polynom::Polynom()
{
    randomize();
    n = random(5);
    koef = new double[n + 1];
    if (!koef) { cout << "Error"; getch(); return; }
    for (int i = n; i >= 0; i--)
        koef[i] = random(10) - 5;
}
//************* Polynom(int k) *******************************
Polynom::Polynom(int k)
{
    n = k;
    koef = new double[n + 1];
    if (!koef) { cout << "Error"; getch(); return; }
    for (int i = n; i >= 0; i--)
        koef[i] = random(10) - 5;
}
//****************** Polynom(int k,double mas[]) ******************
Polynom::Polynom(int k, double mas[])
{
    n = k;
    koef = new double[n + 1];
    if (!koef) { cout << "Error"; getch(); return; }
    for (int i = n; i >= 0; i--)
        koef[i] = mas[i];
}
//*************** Polynom(const Polynom&ob) *********************
Polynom::Polynom(const Polynom& ob)
{
    n = ob.n;
    koef = new double[n + 1];
    if (!koef) { cout << "Error"; getch(); return; }
    for (int i = 0; i <= n; i++)
        koef[i] = ob.koef[i];
}
//**************** void GiveMemory(int k) **********************
void Polynom::GiveMemory(int k)
{
    if (koef) delete[] koef;
    koef = new double[k + 1];
    if (!koef) { cout << "Error"; getch(); return; }
}
//******************** SetPolynom **************************
void Polynom::SetPolynom(int k, double* mas)
{
    n = k;
    if (koef) delete[] koef;
    koef = new double[n + 1];
    for (int i = n; i >= 0; i--)
        koef[i] = mas[i];
}
//*************** CalculateValue *****************************
void Polynom::CalculateValue(double x = 1.0)
{
    double s;
    int i;
    for (s = koef[0], i = 1; i <= n; i++)
        s = s + koef[i] * pow(x, i);
    cout << "f(" << x << ")="; cout << s << endl;
}
//**************** Polynom operator+(Polynom ob) ***************
Polynom Polynom::operator+(Polynom ob)
{
    int i;
    Polynom rab;
    rab.GiveMemory(max(n, ob.GetDegree()));
    for (i = 0; i <= min(n, ob.GetDegree()); i++)
        rab.koef[i] = koef[i] + ob.GetOneCoefficient(i);
    if (n < ob.GetDegree())
    {
        for (i = min(n, ob.GetDegree()) + 1; i <= ob.GetDegree(); i++)
            rab.koef[i] = ob.GetOneCoefficient(i);
        rab.n = ob.GetDegree();
    }
    else
    {
        for (i = min(n, ob.GetDegree()) + 1; i <= n; i++) rab.koef[i] = koef[i];
        rab.n = n;
    }
    return rab;
}
//*************** Polynom operator*(Polynom ob) ***************
Polynom Polynom::operator*(Polynom ob)
{
    int i, j, k;
    double s;
    Polynom rab;
    rab.GiveMemory(n + ob.GetDegree());
    for (i = 0; i <= n + ob.GetDegree(); i++)
    {
        s = 0;
        for (j = 0; j <= n; j++)
            for (k = 0; k <= ob.GetDegree(); k++)
                if (j + k == i)s = s + koef[j] * ob.GetOneCoefficient(k);
        rab.koef[i] = s;
    }
    rab.n = n + ob.GetDegree();
    return rab;
}
//********** ostream& operator<<(ostream& mystream,Polynom &ob) ******
ostream& operator<<(ostream& mystream, Polynom& ob)
{
    char c = ' '; //пропустим “+” перед первым коэффициентом
    for (int i = ob.n; i >= 0; i--)
    {
        double ai = ob.koef[i];
        if (ai == 0) continue;
        else { if (ai > 0) mystream << c; mystream << ai; }
        if (i == 0) continue; else mystream << "x";
        if (i == 1) continue; else mystream << "^" << i;
        if (ai != 0)c = '+';
    }
    if (c == ' ')mystream << 0;
    mystream << endl;
    return mystream;
}
//********* istream& operator>>(istream& mystream,Polynom &ob) *
istream& operator>>(istream& mystream, Polynom& ob)
{
    int i;
    cout << "Enter Degree:";  mystream >> ob.n; cout << endl;
    for (i = ob.n; i >= 0; i--)
    {
        cout << "Enter koeff " << i << ":";  mystream >> ob.koef[i];
    }
    return mystream;
}