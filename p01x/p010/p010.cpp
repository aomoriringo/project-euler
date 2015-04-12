/* Compile: g++ p010.cpp -lmpir -lmpirxx */

#include <iostream>
#include <cmath>
#include <mpir.h>
#include <deque>

using namespace std;

int main(){
  const int MAX = 2000000;
  deque<bool> p;

  for(int i=0 ; i<MAX+1 ; i++){
    p.push_back(true);
  }
  p[0] = false;
  p[1] = false;

  double myEnd = sqrt(double(MAX));
  for(int i=2 ; i < myEnd ; i++){
    for(int j=2 ; i*j<=MAX ; j++){
      p[i*j] = false;
    }
  }

  mpz_t n;
  mpz_init_set_str(n,"0",10);

  for(int i=1 ; i<=MAX ; i++) if(p[i]) mpz_add_ui(n, n, i);
  mpz_out_str(stdout, 10, n);
  cout << endl;
  return 0;
}
