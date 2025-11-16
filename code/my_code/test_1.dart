void main() {
  //variableType();
  //controlFlow();
  //function
  //colloctionList();
  //collectionSet();
  //colloctionMap();
  //transfrom();
  //conditionCollection();
  //collectionExample();
}

//Real World Collection Example
void collectionExample() {
  //Filter Students by age
  List<Map<String, dynamic>> students = [
    {"name": "Afiq1", "age": 20},
    {"name": "Afiq2", "age": 18},
    {"name": "Afiq3", "age": 22},
  ];
  print(students);
  students.add({"name": "Afiq4", "age": 25});
  print(students);

  var adults = students.where((s) => (s['age'] as int) >= 20).toList();
  print(adults);

  //Unique items with Set

  var num = [1, 2, 3, 2, 2, 3, 4];
  var unique = num.toSet().toList();
  print(unique);

  //Conting Words using Map
  String text = "hello world hello dart";
  Map<String, int> count = {};
  for (var word in text.split(" ")) {
    count[word] = (count[word] ?? 0) + 1;
  }
  print(count);
}

// Condition in colloction
void conditionCollection() {
  //Add items Conditinally / Collection If
  var isLoggedIn = true;
  var menu = ["home", if (isLoggedIn) "profile", "Settings"];
  print(menu);

  // Generate List Easily / Collection for

  var squares = [for (var i = 1; i <= 5; i++) i * i];
  print(squares);

  //Unmodifiable Collections
  try {
    var list = List.unmodifiable([1, 2, 4, 5, 6, 7, 8]);
    list.add(10);
    print(list);
  } catch (e) {
    print("Error : $e");
  }
}

//Higher-Order Operations

void transfrom() {
  //Transfrom every item
  var num = [1, 2, 3];
  var double = num.map((n) => n * 2).toList();
  print(double.runtimeType);
  print(double);

  //filter item by conditions
  var evens = num.where((n) => n.isOdd).toList();
  print(evens);

  //Combines all items into one value
  var sum = num.reduce((a, b) => a + b);
  print(sum);

  //Same as reduce but lets you set the initial value
  var total = num.fold(10, (a, b) => a + b);
  print(total);

  //Any()/ every()
  print(num.any((n) => n > 2));
  print(num.every((n) => n > 0));

  //firstWhere()
  var firstEven = num.firstWhere((n) => n.isEven, orElse: () => -1);
  var firstOdd = num.firstWhere((n) => n % 2 != 0, orElse: () => 0);
  print(firstOdd);
  print(firstEven);

  //Spread Operator

  var a = [1, 2, 3, 4, 5];
  print(a);
  var b = [0, ...a, 6];
  print(b);

  //Null aware spread
  List<int>? x = null;
  var y = [1, 2, ...?x, 3];
  print(y);
}

//Map
void colloctionMap() {
  Map<String, dynamic> person = {'name': 'moshiur', 'age': 22};
  print(person['name']);
  print(person['age']);
  person['age'] = 20;
  print(person);
  print(person.containsKey('name'));
  print(person.containsValue(20));

  for (var item in person.entries) {
    print("${item.key} ${item.value}");
  }
  print("");
  // Create a Map
  Map<String, int> ages = {"Afiq": 20, "John": 25, "Sara": 30};
  // 1. Access value
  print("Afiq age: ${ages['Afiq']}");
  // 2. Add new key-value
  ages["Ali"] = 40;
  print("add Ali: $ages");
  // 3. Update value
  ages["John"] = 26;
  print("update John: $ages");
  // 4. Remove key
  ages.remove("Sara");
  print("remove Sara: $ages");
  // 5. Check if key exists
  print("containsKey('Afiq'): ${ages.containsKey('Afiq')}");

  // 6. Check if value exists
  print("containsValue(40): ${ages.containsValue(40)}");
  // 7. Length
  print("length: ${ages.length}");

  // 8. Loop through keys
  for (var key in ages.keys) {
    print(key);
  }
  // 9. Loop through values
  print("Values:");
  for (var value in ages.values) {
    print(value);
  }
  // 10. Loop through entries (key + value)
  for (var item in ages.entries) {
    print("${item.key} ${item.value}");
  }
  // 10. Loop through entries (key + value)
  print("Entries");
  ages.forEach((key, value) {
    print("$key is $value years old");
  });
  // 11. Add many values at once
  ages.addAll({"Mike": 50, "Sam": 33});
  print("addAll: $ages");

  // 12. Check if Map is empty
  print("isEmpty: ${ages.isEmpty}");
  print("isNotEmpty: ${ages.isNotEmpty}");

  // 13. Get keys & values list
  print("key List : ${ages.keys.toList()}");
  print("values list : ${ages.values.toList()}");

  // 14. Remove all
  ages.clear();
  print("clear: $ages");
}

// Set
void collectionSet() {
  Set<String> fruits = {'apple', 'banana'};
  print(fruits);
  fruits.add("mango");
  fruits.remove("banana");
  print(fruits);

  // Common Set Operation
  var a = {1, 2, 3};
  var b = {3, 4, 5};
  print(a.union(b));
  print(a.intersection(b));
  print(a.difference(b));

  //Convert into list
  List<int> numList = a.toList();
  print("toList(): $numList");

  Set<int> numbers = {1, 2, 3};

  // 1. Add item
  numbers.add(4);
  print("add: $numbers");

  // 2. Add many
  numbers.addAll({5, 6});
  print("addAll: $numbers");

  // 3. Duplicate values are ignored
  numbers.add(3);
  print("add duplicate(3): $numbers");

  // 4. Check if contains
  print("contains 4? ${numbers.contains(4)}");

  // 5. Remove item
  numbers.remove(2);
  print("remove(2): $numbers");

  // 6. Set length
  print("length: ${numbers.length}");

  // 7. First & Last
  print("first: ${numbers.first}");
  print("last: ${numbers.last}");

  // 8. Loop through set
  print("loop:");
  for (var n in numbers) {
    print(n);
  }

  // 10. Intersection
  Set<int> s1 = {1, 2, 3};
  Set<int> s2 = {3, 4, 5};
  print("intersection: ${s1.intersection(s2)}");

  // 11. Union
  print("union: ${s1.union(s2)}");

  // 12. Difference
  print("difference: ${s1.difference(s2)}");

  // 13. Clear all
  numbers.clear();
  print("clear: $numbers");
}

//Control
void controlFlow() {
  //if else
  int? s = 30;
  if (s >= 30) {
    print("Yes");
  } else if (s < 30) {
    print("No");
  } else {
    print("Noting");
  }
  print("\n");

  // Switch
  int day = 1;
  switch (day) {
    case 1:
      print("hello");
      break;
    case 2:
      print("Good");
      break;
    default:
      print("Nothing");
  }
  print("\n");

  // loop

  // for Loop
  for (int i = 1; i <= 3; i++) {
    print(i);
  }
  print("\n");

  //while loop
  int i = 1;
  while (i <= 3) {
    print(i);
    i++;
  }
  print("\n");

  //do while
  int j = 1;
  do {
    print(j);
    j++;
  } while (j <= 3);
  print("\n");
}

// Function

//Basic functions
void greet() {
  print("hello");
}

//return function
int add(int a, int b) {
  return a + b;
}

//Arrow Function
int sum(int a, int b) => a + b;
int square(int a) => a * a;

//Optional positional parametters
void optionalParam(String name, [String? title]) {
  print("Hello $title $name");
}

//Named Parameters
void login({required String username, required String password}) {
  String pass = "1234";
  String user = "moshiur";
  if (username == user && password == pass) {
    print("Loging Successful");
  } else {
    print("Wrond Cradential");
  }
}

//Colloctions
void colloctionList() {
  List<int> num = [1, 2, 3];
  //add item
  num.add(4);
  print("add : $num");

  //add many
  num.addAll([5, 6]);
  print("addAll : $num");

  //Insert at position
  num.insert(0, 10);
  print("insert : $num");

  //insert many at position
  num.insertAll(1, [20, 30, 40]);
  print("insertAll : $num");

  print("index 3 : ${num[2]}");
  num[2] = 100;
  print("index 3 : ${num[2]}");

  //remove by value
  num.remove(1);
  //remove by index
  num.removeAt(0);
  num.removeLast();

  //remove in range
  num.removeRange(3, 5);
  //check contains
  print("contains 4?${num.contains(122)}");
  print("Length : ${num.length}");
  //print first and last
  print("First : ${num.first}");
  print("Last : ${num.last}");
  num.sort();
  print("Sorted : $num");
  //reverse
  print("reverse : ${num.reversed.toList()}");
  //where
  print("where even: ${num.where((n) => n % 2 == 0)}");
  print("Where odd : ${num.where((n) => n % 2 != 0)}");

  //clear
  num.clear();
  print(num);
}

//Vareable Check
void variableType() {
  var name = "Afiq";
  String city = "Kuala Lumpur";
  int age = 20;
  double price = 12.5;
  bool isStudent = true;
  print("$name $city $age $price $isStudent");

  const pi = 3.1416;
  const area = pi * 12 * 12;
  final now = DateTime.now();
  print(now);
  print('The value of pi is ${area.toStringAsFixed(2)}');

  var x = 10; // changable
  final y = 20; // not change able run time constant
  const z = 30; //compile time constant

  print("$x $y $z");
}
