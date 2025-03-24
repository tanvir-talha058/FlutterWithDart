int add (int a, int b){
  var total=a+b;
  return total;

}
//parameter and no return type

void mul(int a, int b){
  var total;
  total=a*b;
  print("Mutiplication is:$total");
}

//no parameter and return type

String greet(){
  String greet="Welcome";
  return greet;
}

//no paremeter and no return type 

void greetings(){
  print("hello tanviir");
}



void main(){
  var total=add(3,4);
  print("Total sum:$total");
  mul(2,3);
  var greeting =greet();
  print("Greeting: $greeting");

  greetings();
}
