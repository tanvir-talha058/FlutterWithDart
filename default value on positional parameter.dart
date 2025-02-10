void printInfo(String name, String gender, [String title="sir/ma'am"]){
  print("hello $title $name your gender is $gender");

}

void main (){
  printInfo("tanvir","male");
  printInfo("Tanvir","male","Mr.");
  printInfo("sumu","female","Ms.");
  
}