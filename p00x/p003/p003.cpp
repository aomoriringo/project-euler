/* Compile: g++ p003.cpp -lmpir */

#include <iostream>
#include <vector>
#include <mpir.h>

using namespace std;

vector<unsigned long int> factorize(mpz_t);

int main(){
  mpz_t n;
  vector<unsigned long int> primes;
  mpz_init_set_str(n, "600851475143", 10);
  primes = factorize(n);
  for(int i=0 ; i<(int)primes.size() ; i++){
    cout << primes[i] << endl;
  }

  return 0;
}

vector<unsigned long int> factorize(mpz_t n){
  vector<unsigned long int> primes;
  mpz_t tmp1;
  unsigned long int a=2;

  mpz_init(tmp1);
  while(1){
    while(1){
      mpz_mod_ui(tmp1, n, a);
      if(mpz_cmp_si(tmp1,0)==0){
        mpz_div_ui(n,n,a);
        primes.push_back(a);
      }
      else break;
    }
    if(mpz_cmp_si(n,1)==0) break;
    a++;
  }
  return primes;
}
