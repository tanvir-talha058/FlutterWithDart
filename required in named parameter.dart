void printInfo({required String name, required String gender}){
  print("hello $name ,your gender is $gender");
}

void main(){
  
  printInfo(gender: "male",name: "tanvir");
  printInfo(gender: "female",name: "sumu");
}