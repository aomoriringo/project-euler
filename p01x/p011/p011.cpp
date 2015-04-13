#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
using namespace std;

int main(){
  const int SIZE = 20;

  ifstream ifs( "data.txt" );
  string datstr, dattmp;
  int dat[SIZE][SIZE];

  // ファイル読み込み
  int i=0,j=0;
  while(ifs && ifs >> datstr){
    dat[i][j++] = atoi(datstr.c_str());

    if(j>=SIZE){
      j=0;
      i++;
    }
  }

  int ans=0, tmp;

  // 横
  for(i=0 ; i<SIZE ; i++){
    for(j=0 ; j<SIZE-4 ; j++){
      tmp = dat[i][j] * dat[i][j+1] * dat[i][j+2] * dat[i][j+3];
      if(ans < tmp) ans = tmp;
    }
  }

  // 縦
  for(i=0 ; i<SIZE-4 ; i++){
    for(j=0 ; j<SIZE ; j++){
      tmp = dat[i][j] * dat[i+1][j] * dat[i+2][j] * dat[i+3][j];
      if(ans < tmp) ans = tmp;
    }
  }

  //斜め(左上-右下)
  for(i=0 ; i<SIZE-4 ; i++){
    for(j=0 ; j<SIZE-4 ; j++){
      tmp = dat[i][j] * dat[i+1][j+1] * dat[i+2][j+2] * dat[i+3][j+3];
      if(ans < tmp) ans = tmp;
    }
  }

  //斜め(右上-左下)
  for(i=0; i<SIZE-4 ; i++){
    for(j=4 ; j<SIZE ; j++){
      tmp = dat[i][j] * dat[i+1][j-1] * dat[i+2][j-2] * dat[i+3][j-3];
      if(ans < tmp) ans = tmp;
    }
  }

  cout << ans << endl;
  return 0;
}
