void main() {
  //p1();
  //p2();
  //p3();
  //p4();
  //p5();
  //p6();
  //p7();
  //p8();
  //p9();
  //p10();
  //p11();
  //p12();
  //p13();
  //p14();
  //p15();
  //p16();
}

void p16() {
  String text = "hello";
  Map<String, dynamic> count = {};
  for (int i = 0; i < text.length; i++) {
    count[text[i]] = (count[text[i]] ?? 0) + 1;
  }
  print(count);
}

void p15() {
  //Convert {4, 1, 3} to a List and sort ascending.
  var a = {4, 1, 3};
  var b = a.toList();
  b.sort();
  print(b);
}

void p14() {
  //Convert ["a", "b", "a", "c"] to a Set.
  var a = ["a", "b", "a", "c"];
  var b = a.toSet();
  print(b);
}

void p13() {
  //Filter Students by Age
  List<Map<String, dynamic>> students = [
    {"name": "Afiq", "age": 20},
    {"name": "Mira", "age": 17},
    {"name": "Ali", "age": 22},
  ];
  List<Map<String, dynamic>> studentInfo = [];

  for (var item in students) {
    if (item['age'] >= 18) {
      studentInfo.add(item);
    }
  }
  print(studentInfo);
  studentInfo = [];
  print(studentInfo);
  studentInfo = students.where((ages) => (ages["age"] as int) >= 18).toList();
  print(studentInfo);
}

void p12() {
  var m = {"math": 90, "science": 85};
  for (var item in m.entries) {
    print("${item.key} -> ${item.value}");
  }

  m.forEach((key, value) => print("$key -> $value"));
}

void p11() {
  var student = {"name": "Afiq", "age": 20};
  student.addAll({"grade": "A"});
  print(student.containsKey("name"));
}

void p10() {
  //Increase "age" by 1.
  var student = {"name": "Afiq", "age": 20};
  student.addAll({"grade": "A"});
  student['age'] = (student['age'] as int) + 1;
  print(student);
}

void p9() {
  //Add a New Key-Value Pair
  var student = {"name": "Afiq", "age": 20};
  student.addAll({"grade": "A"});
  print(student);
}

void p8() {
  //Find the common items between {1,2,3} and {2,3,4}.
  var a = {1, 2, 3};
  var b = {2, 3, 4};
  print(a.intersection(b).toSet());
}

void p7() {
  //Create a Set of fruits and try adding "apple" twice.
  Set<String> fruits = {"apple", "banana", "mango"};
  fruits.add("apple");
  print(fruits);
}

void p6() {
  //Use a Set to remove duplicates from [1, 2, 2, 3, 3, 3]
  var num = [1, 2, 2, 3, 3, 3];
  print(num.toSet().toList());
}

void p5() {
  //Split this sentence into words and count them:
  //"I love learning Dart"
  String text = "I love learning Dart";
  int count = 0;
  for (var _ in text.split(" ")) {
    count++;
  }
  print(count);

  int c = text.split(" ").length;
  print(c);
  int x = 0;
  text.split(" ").forEach((_) => x++);
  print(x);
}

void p4() {
  //Find the largest number in [12, 5, 26, 9].
  List<int> num = [12, 5, 26, 9];
  int max = 0;
  for (int i = 0; i < num.length; i++) {
    if (num[i] > max) {
      max = num[i];
    }
  }
  print(max);

  //use for in loop
  max = num[0];
  for (var value in num) {
    if (value > max) {
      max = value;
    }
  }
  print(max);

  // Using reduce()
  max = num.reduce((a, b) => a > b ? a : b);
  print(max);

  max = 0;
  //using fold()
  max = num.fold(num[0], (a, b) => a > b ? a : b);
  print(max);

  //Using built-in .sort()
  num.sort();
  print(num.last);
}

void p3() {
  //Given [2, 4, 6], create a new list with each number doubled using .map().
  List<int> num = [2, 4, 6];
  print(num.map((n) => n * 2).toList());
}

void p2() {
  //From the list [1, 2, 3, 4, 5, 6], print only even numbers using .where().
  List<int> num = [1, 2, 3, 4, 5, 6];
  print(num.where((n) => n.isEven).toList());
}

void p1() {
  //Create a list of numbers. Add 2 more numbers. Print the final list.
  List<int> num = [1, 2, 3, 4, 5];
  print(num);
}
