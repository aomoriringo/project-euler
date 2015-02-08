#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include <cstdlib>
using namespace std;

vector<string> split(const string& str, const string& delimiter){
  string item(str);
  for(string::size_type pos = item.find(delimiter) ; pos != string::npos ; pos = item.find(delimiter, pos)) {
    item.replace(pos, delimiter.size(), " ");
  }
  stringstream buf(item);

  vector<string> result;
  while(buf >> item){
    result.push_back(item);
  }
  return result;
}

struct Point{
  double x;
  double y;
};

// p1, p2 を通る直線とp3, p4を結ぶ線分が交差しているかを調べる
// =0 -> 直線上に線分の1点 or 2点がある
// <0 -> 直線と線分が交差する
// >0 -> 直線と線分は交差しない
double intersectM(Point p1, Point p2, Point p3, Point p4){
  double a1 = (p1.x - p2.x)*(p3.y - p1.y);
  double a2 = (p1.y - p2.y)*(p1.x - p3.x);
  double a3 = (p1.x - p2.x)*(p4.y - p1.y);
  double a4 = (p1.y - p2.y)*(p1.x - p4.x);
  return (a1 + a2)*(a3 + a4);
}

// p1, p2, p3で囲まれる三角形にtargetが含まれるかどうか
bool isIncludeTriangle(Point p1, Point p2, Point p3, Point target){
  // 3点が一直線上にある
  if((p1.x-p3.x)*(p1.y-p2.y) == (p1.x-p2.x)*(p1.y-p3.y)) return false;

  Point c;
  c.x = (p1.x + p2.x + p3.x)/3;
  c.y = (p1.y + p2.y + p3.y)/3;
  if(intersectM(p1,p2,target,c)<0 ||
      intersectM(p1,p3,target,c)<0 ||
      intersectM(p2,p3,target,c)<0) return false;
  return true;
}

int main(){
  ifstream ifs("data.txt");
  string tmp;
  vector<string> vstr;

  Point p1,p2,p3,t;
  t.x = 0;
  t.y = 0;
  int cnt = 0;
  for(int i=0 ; i<1000 ; i++){
    ifs >> tmp;
    vstr = split(tmp, ",");
    p1.x = atoi(vstr[0].c_str());
    p1.y = atoi(vstr[1].c_str());
    p2.x = atoi(vstr[2].c_str());
    p2.y = atoi(vstr[3].c_str());
    p3.x = atoi(vstr[4].c_str());
    p3.y = atoi(vstr[5].c_str());
    if(isIncludeTriangle(p1,p2,p3,t)) cnt++;
  }
  cout << cnt << endl;
}

