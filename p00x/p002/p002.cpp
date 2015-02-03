#include <iostream>
using namespace std;

int fibonacci(int);

int main(){

  int ans = 0;
  int tmp;
  for(int i=1 ; i<1000 ; i++){
    tmp = fibonacci(i);
    if(tmp > 4000000) break;
    if(tmp%2 == 0) ans += tmp;
  }

  cout << ans << endl;
  return 0;
}

int fibonacci(int n){
  if(n > 1) return fibonacci(n-1) + fibonacci(n-2);
  else return 1;
}

