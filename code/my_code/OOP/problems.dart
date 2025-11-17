//problem 3

// Employee → Manager → Developer Hierarchy
//  Concepts used:
// Inheritance
// Method overriding
// Polymorphism
// Constructors

// void main() {
//   Employee e = Employee("Afiq", 2000);
//   Manager m = Manager("Rahim", 4000, 5);
//   Developer d = Developer("Mira", 3500, "Flutter");

//   e.showInfo();
//   m.showInfo();
//   d.showInfo();
// }

// class Employee {
//   String name;
//   double salary;
//   Employee(this.name, this.salary);
//   void showInfo() {
//     print("Employee : $name | Salary : RM $salary");
//   }
// }

// class Manager extends Employee {
//   int teamSize;
//   Manager(String name, double salary, this.teamSize) : super(name, salary);
//   @override
//   void showInfo() {
//     print("Employee : $name | Salary : RM $salary | Team Size : $teamSize");
//   }
// }

// class Developer extends Employee {
//   String skill;
//   Developer(String name, double salary, this.skill) : super(name, salary);
//     @override
//   void showInfo() {
//     print("Employee : $name | Salary : RM $salary | Skill : $skill");
//   }
// }

// Simple Shopping Cart System
// Classes:
// Item → product information
// CartItem → item + quantity
// Cart → all cart items, calculate total

void main() {
  var item1 = Item("Laptop", 2500);
  var item2 = Item("Mouse", 50);

  var cart = Cart();
  cart.addItem(item1, 1);
  cart.addItem(item2, 2);

  cart.showCart();
  print("Total Price: RM${cart.total()}");
}

class Item {
  String name;
  double price;
  Item(this.name, this.price);
}

class CartItem {
  Item item;
  int quantity;
  CartItem(this.item, this.quantity);
  double get totalPrice => item.price * quantity;
}

class Cart {
  List<CartItem> items = [];

  void addItem(Item item, int quantity) {
    items.add(CartItem(item, quantity));
  }

  double total() {
    double sum = 0;
    for (var ci in items) {
      sum += ci.totalPrice;
    }
    return sum;
  }

  void showCart() {
    print(items);
    for (var ci in items) {
      print("${ci.item.name} x ${ci.quantity} = RM ${ci.totalPrice}");
    }
  }
}








// //Problem 2

// void main() {
//   var d = Dog();
//   d.sound();
//   var c = Cat();
//   c.sound();

//   var b = BankAccount();
//   b.diposite(1000);
//   b.withdraw(500);
//   print(b.balance());

//   var car = Car();
//   car.engine.start();
// }

// abstract class Animal {
//   void sound();
// }

// class Cat extends Animal {
//   @override
//   void sound() {
//     print("Cat Sound..");
//   }
// }

// class Dog extends Animal {
//   @override
//   void sound() {
//     print("Dog Sound...");
//   }
// }

// class BankAccount {
//   int _balance = 0;

//   void diposite(int amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   void withdraw(int amount) {
//     if (amount <= _balance) {
//       _balance -= amount;
//     }
//   }

//   int get balance => _balance;
// }

// class Engine {
//   void start() {
//     print("Start Engine...");
//   }
// }

// class Car {
//   Engine engine = Engine();

//   void startCar() {
//     engine.start();
//   }
// }

















//problem 1

// void main() {
//     var laptop = Laptop("Acer", 8, 2500);
//   laptop.showInfo();

//   var book = Book("Dart Basics", "Afiq", 120);
//   book.showDetails();

//   var rect = Ractangle(2, 3);
//   rect.area();
// }

// class Laptop {
//   String brand;
//   int ram;
//   int price;
//   Laptop(this.brand, this.ram, this.price);
//   void showInfo() {
//     print("Brand: $brand | RAM: ${ram}GB | Price: RM$price");
//   }
// }

// class Book {
//   String title;
//   String author;
//   int pages;
//   Book(this.title, this.author, this.pages);
//   void showDetails() {
//     print("Book Detailds");
//     print("Title: $title");
//     print("Author: $author");
//     print("Pages: $pages");
//   }
// }

// class Ractangle {
//   int length;
//   int width;
//   Ractangle(this.length, this.width);
//   void area() {
//     print(length * width);
//   }
// }
