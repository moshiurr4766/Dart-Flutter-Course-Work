void main() {
  // 1 Creating a Class & Object
  //classObject();

  // 2 Constructors
  //var p1 = new Person1();

  // 3 Constructor with parameters
  //var p2 = Person2("Moshiur", 25);
  // p2.personInfo();

  // 4 Named Constructors  (Useful for custom initialization)
  //var p3 = Person3.child();
  // p3.personInfo();

  // 5 Optional & Named Constro Parameters

  // 6 Fields And Methods
  //var c = Car();
  //c.accelarate();
  //c.accelarate();
  //c.showSpeed();

  //7. Encapsulation (private variables) and gatter and setters
  // var acc = BankAccount();
  // acc.deposit(100);
  // print(acc.balanceInfo());

  //8. Inheritance (extends)
  // var d = Dog();
  // d.eat();
  // d.bark();

  //9 super keyword
  // var d = Dog1();
  // print(d.type);
  // print("${d.type}  ${d.name}");
  // var c = Cat();
  // print("${c.type}  ${c.name}");

  //10. Method Overriding
  // var d2 = Dog2();
  // d2.sound();
  // var d3 = Dog3();
  // d3.sound();

  //11. Abstract Classes (cannot be instantiated)
  // var c = Car1("DMW");
  // c.start();
  // c.end();
  // c.stop();
  // print(c.name);
  // showSound(c);

  //12. Interfaces (implements)

  //13. Mixins (Code Sharing)
  // var b = Bird();
  // b.fly();

  // var a = Airplane();
  // a.fly();

  //14. Enums (Enumeration)
  // var c = Color.red;
  // print(c);
  // print(c.index);
  // print(Color.values);
  // print(Color.green.index);
  // for (var color in Color.values) {
  //   print(color);
  // }

  //15 Composition (Has a relationship)
  // var c = Car3();
  // c.engine.start();
}

//15 Composition (Has a relationship)

class Engine {
  void start() => print("Engine Start");
}

class Car3 {
  Engine engine = Engine();
}

//14. Enums (Enumeration)
//An enum is a fixed set of constant values.
enum Color { red, green, blue }

//13. Mixins (Code Sharing)
// Mixins allow you to add reusable methods to multiple classes without inheritance.
// You want to share code across many classes
// You don't want to use inheritance
// You want multiple behaviors in one class

mixin Fly {
  void fly() => print("Flying...");
}

class Bird with Fly {}

class Airplane with Fly {}

//12. Interfaces (implements)
// extends	Inherit fields + methods + constructor
// implements	Must override everything; cannot use super
// extends A implements B	Best combo

class A {
  String name;
  A(this.name);
  void x() {
    print("x");
  }
}

class B {
  String type;
  B(this.type);
  void y() {
    print("y");
  }
}

class C extends A implements B {
  C(String name) : super(name);

  @override
  void y() {
    print("y y");
  }

  @override
  String type;

  void z() {
    print("z");
  }
}

//11. Abstract Classes (cannot be instantiated)
// You want to force child classes to implement some methods.
// You want to create a general template for multiple classes.
//Child class MUST override abstract methods
//Abstract Class With Concrete (non-abstract) Method
//Abstract Class With Constructor Allow
abstract class Vehicle {
  String name;
  Vehicle(this.name); //allowed
  void start(); // abstruct method
  void end(); // abstruct method
  void stop() {
    print("Car Stop");
  }
}

class Car1 extends Vehicle {
  Car1(String name) : super(name);
  @override
  void start() {
    print("Car Starts");
  }

  @override
  void end() {
    print("Car End");
  }
}

//Using Abstract Classes for Polymorphism
void showSound(Vehicle v) {
  v.start();
}

//10. Method Overriding
//Overriding = Child changes Parent’s method behavior.
class Animal2 {
  void sound() => print("Animal 3 Sound");
  int _age = 0;
}

class Dog2 extends Animal2 {
  @override
  void sound() => print("Bark!");

  void showAge() {
    print("Dog Age : $_age");
  }
}

class Dog3 extends Animal2 {
  @override
  void sound() {
    super.sound();
    print("This is Dog3");
  }
}

// 9. super keyword
// Used to access parent properties or constructors.
class Animal1 {
  String type;
  String? name;
  Animal1(this.type, [this.name]);
}

class Dog1 extends Animal1 {
  Dog1() : super("Mammal");
}

class Cat extends Animal1 {
  Cat() : super("Cat1", "cat2");
}

//9. Inheritance (extends)  Child inherits from parent.

class Animal {
  void eat() => print("Aniaml Eats");
}

class Dog extends Animal {
  void bark() => print("Dog Barks");
}

//7. Encapsulation (private variables) and gatter and setter
//Private variables start with underscore _.
//Trying to access _balance outside the class → ❌ error.
class BankAccount {
  double _balance = 0;
  void deposit(double amount) {
    _balance += amount;
  }

  double balanceInfo() {
    return _balance;
  }

  // Getters
  double get balance => _balance;
  //Setters
  set balance(double amount) {
    if (amount >= 0) _balance = amount;
  }
}

//6. Fields & Methods

class Car {
  String brand = "";
  int speed = 0;

  void accelarate() {
    speed += 10;
  }

  void showSpeed() {
    print("$brand speed : $speed");
  }
}

//Optional & Named Constro Parameters
class Person4 {
  String name;
  int age;
  Person4([this.name = "Unkonwn", this.age = 0]);
}

class Person5 {
  String name;
  int age;
  Person5({required this.name, required this.age});
}

//Named Constructors
class Person3 {
  String name;
  int age;
  Person3(this.name, this.age);

  //custom initialization
  //Person3.child() : name = "No Name", age = 0;
  Person3.child() : name = "Name", age = 0;

  void personInfo() {
    print("Hello, My name is $name age is $age");
  }
}

// Constructors
class Person1 {
  Person1() {
    print("Constructor Called");
  }
}

//constructor With Parameters
class Person2 {
  String name;
  int age;
  Person2(this.name, this.age);
  void personInfo() {
    print("Hello, My name is $name age is $age");
  }
}

// Class And Object

void classObject() {
  var p = new Person();
  p.sayHello();
  p.name = "Moshiur Rahman";
  p.age = 24;
  p.sayHello();
}

class Person {
  String name = "Unknown";
  int age = 0;
  void sayHello() {
    print("Hello, My name is $name age is $age");
  }
}
