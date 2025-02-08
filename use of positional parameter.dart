void printInfo(String name, String gender){
  print("hello $name your gender is $gender");

}
void main(){

  //passing value in wrong order
  printInfo("male","tanvir");

  //passing value in correct order

  printInfo("tanvir","male");

}