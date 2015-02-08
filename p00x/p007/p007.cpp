#include <iostream>
#include <cmath>
using namespace std;

int main(){
  const int MAX = 1000000;
  bool p[MAX+1];
  for(int i=0 ; i<MAX+1 ; i++){
    p[i] = true;
  }
  p[0] = false;
  p[1] = false;

  double myEnd = sqrt(double(MAX));
  for(int i=2 ; i<myEnd ; i++){
    for(int j=2 ; i*j<=MAX ; j++){
      p[i*j] = false;
    }
  }

  int th=1;
  for(int i=1 ; i<=MAX ; i++){
    if(p[i]){
      if(th==10001) cout << th << "th -> " << i << endl;
      th++;
    }
  }
}
