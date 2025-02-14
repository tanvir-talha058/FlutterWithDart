void printInfo(String name, String gender, [String? title]){
  print("hello $title $name your gender is $gender,");

}

void main(){
  printInfo("tanvir", "male");
  printInfo("tnavir","maale","Mr.");
  printInfo("kavya","female","Ms.");
}