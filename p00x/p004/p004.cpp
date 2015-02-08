#include <iostream>
#include <sstream>
#include <string>
#include <algorithm>
using namespace std;

string IntToString(int);
bool IsPalindromic(int);

int main(){
  int ans = 0;

  for(int i=0 ; i<1000 ; i++){
    for(int j=i ; j<1000 ; j++){
      if(IsPalindromic(i*j) && i*j > ans) ans = i*j;
    }
  }
  cout << ans << endl;
}

bool IsPalindromic(int num){
  static string str1, str2;
  str1 = IntToString(num);
  str2 = str1;
  reverse(str2.begin(), str2.end());
  return str1 == str2;
}

string IntToString(int num){
  stringstream ss;
  ss << num;
  return ss.str();
}
