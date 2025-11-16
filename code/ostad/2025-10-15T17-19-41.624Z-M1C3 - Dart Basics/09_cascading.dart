void main() {
  // Cascade Notation (..) in Dart
  // Allows you to perform multiple operations on the same object
  // This makes your code shorter and easier to read

  // 1. Without Cascade - The Long Way
  print('Without cascade notation:');
  List<String> fruits1 = [];
  fruits1.add('Apple');
  fruits1.add('Banana');
  fruits1.add('Orange');
  print(fruits1); // Output: [Apple, Banana, Orange]

  // 2. With Cascade - The Short Way
  print('\nWith cascade notation:');
  List<String> fruits2 = []
    ..add('Apple')
    ..add('Banana')
    ..add('Orange');
  print(fruits2); // Output: [Apple, Banana, Orange]

  // 3. Cascade with a Class
  print('\nUsing cascade with a Person class:');

  // Without cascade
  Person person1 = Person();
  person1.name = 'John';
  person1.age = 25;
  person1.city = 'New York';
  person1.displayInfo();

  // With cascade - much cleaner!
  Person person2 = Person()
    ..name = 'Alice'
    ..age = 30
    ..city = 'London'
    ..displayInfo();

  // 4. Cascade with Multiple Method Calls
  print('\nCascade with StringBuffer:');
  StringBuffer message = StringBuffer()
    ..write('Hello')
    ..write(' ')
    ..write('World')
    ..write('!');
  print(message.toString()); // Output: Hello World!

  // 5. Cascade with List Operations
  print('\nMultiple list operations:');
  List<int> numbers = [1, 2, 3]
    ..add(4)
    ..add(5)
    ..remove(2);
  print(numbers); // Output: [1, 3, 4, 5]

  // 6. Null-Aware Cascade (?..)
  // Use when the object might be null
  print('\nNull-aware cascade:');
  List<String>? nullableList;

  // This won't crash even though the list is null
  nullableList
    ?..add('Item1')
    ..add('Item2');
  print(nullableList); // Output: null

  // When the list exists
  nullableList = []
    ?..add('Item1')
    ..add('Item2');
  print(nullableList); // Output: [Item1, Item2]

  // 7. Practical Example: Building a Menu
  print('\nBuilding a menu:');
  Menu restaurantMenu = Menu()
    ..addItem('Burger', 10.99)
    ..addItem('Pizza', 12.99)
    ..addItem('Salad', 7.99)
    ..showMenu();
}

// Simple Person class for demonstration
class Person {
  String? name;
  int? age;
  String? city;

  void displayInfo() {
    print('Name: $name, Age: $age, City: $city');
  }
}

// Simple Menu class for demonstration
class Menu {
  List<String> items = [];
  List<double> prices = [];

  void addItem(String item, double price) {
    items.add(item);
    prices.add(price);
  }

  void showMenu() {
    print('Menu:');
    for (int i = 0; i < items.length; i++) {
      print('${items[i]}: \$${prices[i]}');
    }
  }
}
