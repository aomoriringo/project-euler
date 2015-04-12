#include <iostream>
using namespace std;

int main(){
  int i,j,k,terml,termr;

  for(i=1 ; i<333 ; i++){
    for(j=i ; j<1000 ; j++){
      k=1000-i-j;
      terml = i*i + j*j;
      termr = k*k;
      if(terml==termr) break;
    }
    if(terml==termr) break;
  }
  cout << i << " " << j << " " << k  << " " << i*j*k << endl;
}


