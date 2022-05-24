#include "fun.h"

Clist::Clist(int n)
{
	
	cout << "¬ведите массив строк построчно\n";
	Clist::n = n;
	
	
	
	list = new string[n];
	
		
	for(int i=0; i<n; i++)
	{
		getline(cin,list[i]);

	}
	
	
}
Clist::Clist(int n, string* tlist)
{
	
	Clist::n = n;
	list = new string[n];
	for (int i = 0; i < n; i++)
	{
		list[i] = tlist[i];
	}

}

Clist::Clist(const Clist& olist)
{
	Clist::n = olist.n;
	list = new string[n];
	for (int i = 0; i < n; i++)
	{
		list[i] = olist.list[i];
	}
}

void Clist::Show()
{
	cout << "\n";
	for (int i = 0; i < Clist::n; i++)
	{
		cout << list[i]<<endl;
	}
	cout << "";
}
void Clist::Shown(int m)
{
	cout << "\n";
	for (int i = 0; i < n; i++)
	{
		cout << list[i] << endl;
	}
  	cout << ""<<list[m]<<endl;
}

Clist& Clist::operator=(const Clist& s)
{

	Clist::n = s.n;
	Clist::list = new string[s.n];
	for (int i = 0; i < n; i++)
	{
		Clist::list[i] = s.list[i];
	}
	return *this;
}

string& Clist::operator[] (int index)
{
	return list[index];
}

Clist& Clist::operator+(const Clist& s)
{
	Clist temp = Clist(n,list);
	int r = s.n + n; int tn = n;
	Clist::n = r;
	int j = temp.n;
	delete[]Clist::list;
	Clist::list = new string[r];
	for (int i = 0; i < j; i++)
	{
		Clist::list[i] = temp.list[i];
	}
	for (int i = 0; i < s.n; i++)
	{
		Clist::list[i+tn] = s.list[i];
	}
	return *this;
}

int Clist::getn()
{
	return n;
};
string* Clist::getlist()
{
	return list;
}
string Clist::getlistel(int i)
{
	return list[i];
}

void Clist :: setlistel(int i,string m)
{
	list[i] = m;
}
Clist& pc(Clist* s, Clist* m)
{
	int n, j; Clist* bo;
	if (s->getn() > m->getn()) { n = s->getn(); j = m->getn(); bo = s; }
	else {
		n = m->getn(); j = s->getn(); bo=m;
	}
	string* list1 = new string[n];
	for (int i = 0; i < j; i++)
	{
		list1[i] = (s->getlistel(i) + m->getlistel(i));
	}
	if (n != j)
	{
		for (int i = j; i < n; i++)
		{
			list1[i] = (bo->getlistel(i));
		}
	}
	Clist res = Clist(n, list1);
	
	
	return res;
}

Clist& asort(Clist* s)
{
	int N = s->getn();
	Clist temp = Clist(s->getn(), s->getlist());
	int ch = s->getn();
	char** words = new char* [ch];
	char* cur = new char[30];
	for (int i = 0; i < ch; i++)
	{
		words[i] = new char[30];
		strcpy(words[i], temp.getlistel(i).c_str());
	}
	for (int i = 0; i < N - 1; i++)
		for (int j = i + 1; j < N; j++)
			if (strcmp(words[i], words[j]) > 0)
			{
				strcpy(cur, words[i]);
				strcpy(words[i], words[j]);
				strcpy(words[j], cur);
			}
	for (int i = 0; i < ch; i++)
	{
		
		temp.setlistel(i, words[i]);
	}
	*s = temp;
	return *s;
}


void fun1(Clist* s, Clist* m)
{
	
	int tn = s->getn(); int tj = m->getn();
	int r = s->getn() + m->getn(); 
	
	
	string* list = new string[r];
	for (int i = 0; i < tn; i++)
	{
		list[i] = s->getlistel(i);
	}
	for (int i = 0; i <tj; i++)
	{
		list[i+tn] = m->getlistel(i);
	}
	Clist temp = Clist(r, list);
	asort(&temp).Show();
	
}

void fun0(Clist* s, Clist* m)
{

	int tn = s->getn(); int tj = m->getn();
	int r = s->getn() + m->getn();


	string* list = new string[r];
	for (int i = 0; i < tn; i++)
	{
		list[i] = s->getlistel(i);
	}
	for (int i = 0; i < tj; i++)
	{
		list[i + tn] = m->getlistel(i);
	}
	
	arrayUnique(list,r).Show();

}

Clist& arrayUnique(string* ar, int size) // функци€, определ€юща€ элементы массива в единственном экземпл€ре
{
	for (int counter1 = 0; counter1 < size; counter1++)
	{
		for (int counter2 = counter1 + 1; counter2 < size; counter2++)
		{
			if (strcmp(ar[counter1].c_str(),ar[counter2].c_str()) == 0) // если найден одинаковый элемент
			{
				for (int counter_shift = counter2; counter_shift < size - 1; counter_shift++)
				{
					// выполнить сдвиг всех остальных элементов массива на -1, начина€ со следующего элемента, после найденного дубл€
					ar[counter_shift] = ar[counter_shift + 1];
				}
				size -= 1; // уменьшить размер массива на 1

				if (ar[counter1] == ar[counter2]) // если следующий элемент - дубль
				{
					counter2--; // выполнить переход на предыдущий элемент     
				}
			}
		}
	}
	Clist temp = Clist(size, ar);
	return temp;
}