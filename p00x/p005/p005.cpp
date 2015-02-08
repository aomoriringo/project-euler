#include <iostream>
using namespace std;

int gcd(int, int);
int lcm(int, int);

int main(){
  int ans = 1;

  for(int i=1 ; i<=20 ; i++){
    ans = lcm(ans, i);
  }
  cout << ans << endl;
}

int gcd(int m, int n){
  if (m==0 || n==0) return 0;

  while( m!=n ){
    if (m>n) m -= n;
    else n -= m;
  }
  return m;
}

int lcm(int m, int n){
  if (m==0 || n==0) return 0;
  return (m / gcd(m,n))*n;
}
