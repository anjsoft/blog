#include <iostream>

using namespace std;

class A
{
public:
    void f()
    {
        cout<<this<<":this A f():"<<a<<endl;
        cout<<typeid(this).name()<<endl;
    }
private:
   static const int a=3;
};
class B:public A
{
public:
   void f()
    {
        cout<<this<<":this B f():"<<a<<endl;
        cout<<typeid(this).name()<<endl;
    }
private:
   static const int a=5;
};
int main()
{
    A a ;
    B b;
    a.f();
    b.f();

//    A *a = new A();
//    B *b =  new B();
//    a->f();
//    b->f();
//    delete a,b;
    return 0;
}
