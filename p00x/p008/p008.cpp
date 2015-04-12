#include <iostream>
#include <string>
#include <fstream>
#include <cstdlib>
#include <mpir.h>

using namespace std;
const int SERIAL_SIZE = 13;

int main(){
  mpz_t ans, k;
  ifstream ifs("data.txt");
  string str, tmp;
  char c;

  while(ifs >> tmp){
    str += tmp;
  }

  mpz_init_set_si(ans, 0);
  for(int i=0 ; i<(signed)(str.length()-SERIAL_SIZE) ; i++){
    mpz_init_set_si(k, 1);
    for(int j=i ; j<i+SERIAL_SIZE ; j++){
      c = str.at(j);
      mpz_mul_ui(k, k, c-'0');
    }
    if(mpz_cmp(ans, k) == -1)
      mpz_init_set(ans, k);
  }
  char s[10000];
  mpz_get_str(s, 10, ans);
  cout << s << endl;
}


