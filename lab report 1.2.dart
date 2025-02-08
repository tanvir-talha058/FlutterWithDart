abstract class Employee {
  String name;
  double salary;
  String id;
  int workingExp;

  Employee(this.name, this.salary, this.id, this.workingExp);


  void display() {
    print("\nName: $name");
    print("ID: $id");
    print("Salary: $salary BDT");
    print("Experience: $workingExp years");
  }
  

  void increment() {
    if (workingExp > 10) {
      salary *= 1.10; 
    } else if (workingExp > 4) {
      salary *= 1.05; 
    }
  }

  String category() {
    if (salary > 60000) return "A";
    if (salary > 40000) return "B";
    return "C";
  }


  void responsibility();
}


class Manager extends Employee {
  String branch;
  int workingHour;

  Manager(String name, double salary, String id, int workingExp, this.branch, this.workingHour)
      : super(name, salary, id, workingExp);

  @override
  void responsibility() {
    print("Responsibility: Manages overall branch operations.");
  }
}

class Cashier extends Employee {
  String branch;
  int workingHour;

  Cashier(String name, double salary, String id, int workingExp, this.branch, this.workingHour)
      : super(name, salary, id, workingExp);

  @override
  void responsibility() {
    print("Responsibility: Handles customer transactions and billing.");
  }
}


void main() {
  Manager manager = Manager("Tanvir", 65000, "M001", 12, "Satkhira", 8);
  Cashier cashier = Cashier("Talha", 45000, "C001", 6, "Khulna", 6);

  print("\nBefore Increment:");
  manager.display();
  print("Category: ${manager.category()}");
  manager.responsibility();

  cashier.display();
  print("Category: ${cashier.category()}");
  cashier.responsibility();
 

  manager.increment();
  cashier.increment();

  print("\nAfter Increment:");
  manager.display();
  print("New Category: ${manager.category()}");

  cashier.display();
  print("New Category: ${cashier.category()}");
}
