<<<<<<< HEAD
abstract class Employee {
  String name;
  double salary;
  String id;
  int working_exp;

  Employee(this.name, this.salary, this.id, this.working_exp);

  void display() {
    print("Name: $name");
    print("ID: $id");
    print("Salary: $salary BDT");
    print("Experience: $working_exp years");
  }

  void increment() {
    if (working_exp > 10) {
      salary += salary * 0.10;
    } else if (working_exp > 4) {
      salary += salary * 0.05;
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
  int working_hour;

  Manager(String name, double salary, String id, int working_exp, this.branch, this.working_hour)
      : super(name, salary, id, working_exp);

  @override
  void responsibility() {
    print("Manager Responsibility: branch operations.");
  }
}


class Cashier extends Employee {
  String branch;
  int working_hour;

  Cashier(String name, double salary, String id, int working_exp, this.branch, this.working_hour)
      : super(name, salary, id, working_exp);

  @override
  void responsibility() {
    print("Cashier Responsibility: Handles transactions..");
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
=======
abstract class Employee {
  String name;
  double salary;
  String id;
  int working_exp;

  Employee(this.name, this.salary, this.id, this.working_exp);

  void display() {
    print("Name: $name");
    print("ID: $id");
    print("Salary: $salary BDT");
    print("Experience: $working_exp years");
  }

  void increment() {
    if (working_exp > 10) {
      salary += salary * 0.10;
    } else if (working_exp > 4) {
      salary += salary * 0.05;
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
  int working_hour;

  Manager(String name, double salary, String id, int working_exp, this.branch, this.working_hour)
      : super(name, salary, id, working_exp);

  @override
  void responsibility() {
    print("Manager Responsibility: branch operations.");
  }
}


class Cashier extends Employee {
  String branch;
  int working_hour;

  Cashier(String name, double salary, String id, int working_exp, this.branch, this.working_hour)
      : super(name, salary, id, working_exp);

  @override
  void responsibility() {
    print("Cashier Responsibility: Handles transactions..");
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
>>>>>>> b17e8f04922cc46143a322a15f5c5a9b3e74fb3c
