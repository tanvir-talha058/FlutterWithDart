void calculalateInterest(double principal, double rate, double time){
  double interest= principal* rate*time/100;
  print("simple interest is $interest");
}


void main(){
  double principal=5000;
  double time=4;
  double rate=3;

  calculalateInterest(principal, rate, time);
}
