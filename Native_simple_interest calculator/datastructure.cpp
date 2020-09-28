#include <iostream>
using namespace std;
int main ()
{
	int arr[5]={10,20,34,40,35};
	int count=0;
	for(int i=0;i<5;i++)
	{
		if (arr[i]>30)

		{
			count++;
			/* code */
		}
	}
	cout<<count<<endl;
	return 0;
}