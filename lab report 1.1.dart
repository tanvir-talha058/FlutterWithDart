<<<<<<< HEAD
int Second_Highest_value(List<int> numbers) {
  if (numbers.length < 2) {
    throw Exception("List must contain at least two elements.");
  }
  numbers = numbers.toSet().toList(); 
  numbers.sort(); 
  return numbers[numbers.length - 2];
}

void main() {
  List<int> numbers = [10, 20, 5, 40, 30, 40];
  print("Second Highest Value: ${Second_Highest_value(numbers)}");
}





=======
int Second_Highest_value(List<int> numbers) {
  if (numbers.length < 2) {
    throw Exception("List must contain at least two elements.");
  }
  numbers = numbers.toSet().toList(); 
  numbers.sort(); 
  return numbers[numbers.length - 2];
}

void main() {
  List<int> numbers = [10, 20, 5, 40, 30, 40];
  print("Second Highest Value: ${Second_Highest_value(numbers)}");
}





>>>>>>> b17e8f04922cc46143a322a15f5c5a9b3e74fb3c
