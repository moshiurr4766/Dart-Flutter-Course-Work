void main() {
  // ============================================
  // GROWABLE VS. FIXED-LENGTH LISTS
  // ============================================

  /// Growable List: Can change size dynamically
  /// Created using [] literal or List.empty(growable: true)
  List<String> growableList = ['Apple', 'Banana', 'Cherry'];
  print('Growable List: $growableList');

  growableList.add('Date'); // Can add elements
  print('After adding: $growableList');

  growableList.remove('Banana'); // Can remove elements
  print('After removing: $growableList');

  /// Fixed-length List: Cannot change size after creation
  /// Created using List.filled() or List.generate() with growable: false
  List<int> fixedList = List.filled(5, 0);
  print('\nFixed-length List: $fixedList');

  fixedList[0] = 10; // Can modify elements
  fixedList[1] = 20;
  print('After modification: $fixedList');

  // fixedList.add(30); // Error! Cannot add to fixed-length list
  // fixedList.remove(10); // Error! Cannot remove from fixed-length list

  print('\n${'=' * 50}');

  // ============================================
  // COMMON LIST METHODS
  // ============================================

  /// Demonstrating common list methods
  List<int> numbers = [5, 2, 8, 1, 9];
  print('\nOriginal list: $numbers');

  /// add() - Adds an element to the end
  numbers.add(15);
  print('After add(15): $numbers');

  /// addAll() - Adds multiple elements
  numbers.addAll([20, 25]);
  print('After addAll([20, 25]): $numbers');

  /// insert() - Inserts element at specific index
  numbers.insert(0, 100);
  print('After insert(0, 100): $numbers');

  /// insertAll() - Inserts multiple elements at specific index
  numbers.insertAll(2, [50, 60]);
  print('After insertAll(2, [50, 60]): $numbers');

  /// remove() - Removes first occurrence of value
  numbers.remove(8);
  print('After remove(8): $numbers');

  /// removeAt() - Removes element at specific index
  numbers.removeAt(0);
  print('After removeAt(0): $numbers');

  /// removeLast() - Removes the last element
  numbers.removeLast();
  print('After removeLast(): $numbers');

  /// removeWhere() - Removes elements matching condition
  numbers.removeWhere((num) => num < 10);
  print('After removeWhere(< 10): $numbers');

  /// sort() - Sorts the list (modifies original list)
  numbers.sort();
  print('After sort(): $numbers');

  /// sort with custom comparator (descending order)
  numbers.sort((a, b) => b.compareTo(a));
  print('After sort (descending): $numbers');

  /// reversed - Returns reversed iterable
  print('Reversed: ${numbers.reversed.toList()}');

  /// Other useful methods
  List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];

  print('\nFruits: $fruits');
  print('Length: ${fruits.length}');
  print('First element: ${fruits.first}');
  print('Last element: ${fruits.last}');
  print('Is empty: ${fruits.isEmpty}');
  print('Is not empty: ${fruits.isNotEmpty}');
  print('Contains "Banana": ${fruits.contains("Banana")}');
  print('Index of "Cherry": ${fruits.indexOf("Cherry")}');
  print('Sublist (1, 3): ${fruits.sublist(1, 3)}');

  /// clear() - Removes all elements
  List<String> tempList = ['A', 'B', 'C'];
  tempList.clear();
  print('After clear(): $tempList');

  print('\n${'=' * 50}');

  // ============================================
  // ITERATING LISTS
  // ============================================

  List<String> cities = ['New York', 'London', 'Tokyo', 'Paris', 'Sydney'];

  /// 1. Using traditional for loop
  print('\nUsing for loop:');
  for (int i = 0; i < cities.length; i++) {
    print('  $i: ${cities[i]}');
  }

  /// 2. Using for-in loop
  print('\nUsing for-in loop:');
  for (String city in cities) {
    print('  - $city');
  }

  /// 3. Using forEach method
  print('\nUsing forEach:');
  cities.forEach((city) {
    print('  * $city');
  });

  /// 4. Using forEach with index
  print('\nUsing forEach with index:');
  cities.asMap().forEach((index, city) {
    print('  $index: $city');
  });

  /// 5. Using map (transforms elements)
  print('\nUsing map (to uppercase):');
  List<String> upperCities = cities.map((city) => city.toUpperCase()).toList();
  print('  $upperCities');

  /// 6. Using map with transformation
  print('\nUsing map (adding prefix):');
  List<String> formattedCities = cities.map((city) => 'City: $city').toList();
  formattedCities.forEach(print);

  /// 7. Using where (filtering)
  print('\nUsing where (cities with more than 5 letters):');
  List<String> longCities = cities.where((city) => city.length > 5).toList();
  print('  $longCities');

  /// 8. Combining map and where
  print('\nCombining where and map:');
  var result = cities
      .where((city) => city.length > 5) // filter
      .map((city) => city.toUpperCase())
      .toList();
  print('  $result');

  /// 9. Using fold (accumulation)
  print('\nUsing fold (concatenate all cities):');
  String allCities = cities.fold('', (prev, city) => prev + city + ' ');
  print('  $allCities');

  /// 10. Using reduce
  List<int> nums = [1, 2, 3, 4, 5];
  int sum = nums.reduce((value, element) => value + element);
  print('\nSum using reduce: $sum');

  print('\n${'=' * 50}');

  // ============================================
  // NESTED LISTS (2D & 3D)
  // ============================================

  /// Simple 2D List - Matrix representation
  print('\n2D List - Matrix:');
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  print('Matrix:');
  for (var row in matrix) {
    print('  $row');
  }

  /// Accessing elements in 2D list
  print('\nAccessing element at [1][2]: ${matrix[1][2]}');

  /// Modifying 2D list
  matrix[0][0] = 100;
  print('After modification: ${matrix[0]}');

  /// Iterating 2D list with nested loops
  print('\nIterating with nested loops:');
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      print('  matrix[$i][$j] = ${matrix[i][j]}');
    }
  }

  /// Student grades example (practical use case)
  print('\nStudent Grades (nested list):');
  List<List<dynamic>> studentGrades = [
    ['Alice', 85, 90, 92],
    ['Bob', 78, 85, 88],
    ['Charlie', 92, 95, 89]
  ];

  for (var student in studentGrades) {
    String name = student[0];
    List<int> grades = student.sublist(1).cast<int>();
    double average = grades.reduce((a, b) => a + b) / grades.length;
    print('  $name: Grades $grades, Average: ${average.toStringAsFixed(2)}');
  }

  /// 3D List - Cube representation
  print('\n3D List - Cube:');
  List<List<List<int>>> cube = [
    [
      [1, 2],
      [3, 4]
    ],
    [
      [5, 6],
      [7, 8]
    ]
  ];

  print('3D Cube structure:');
  for (int i = 0; i < cube.length; i++) {
    print('  Layer $i:');
    for (int j = 0; j < cube[i].length; j++) {
      print('    Row $j: ${cube[i][j]}');
    }
  }

  /// Accessing 3D list element
  print('\nAccessing cube[1][0][1]: ${cube[1][0][1]}');

  /// Shopping cart with nested structure
  print('\nShopping Cart (complex nested structure):');
  List<Map<String, dynamic>> shoppingCart = [
    {
      'product': 'Laptop',
      'price': 1200.00,
      'quantity': 1,
      'specs': ['16GB RAM', '512GB SSD', 'Intel i7']
    },
    {
      'product': 'Mouse',
      'price': 25.00,
      'quantity': 2,
      'specs': ['Wireless', 'Ergonomic', '1600 DPI']
    },
    {
      'product': 'Keyboard',
      'price': 75.00,
      'quantity': 1,
      'specs': ['Mechanical', 'RGB', 'Wireless']
    }
  ];

  double total = 0;
  for (var item in shoppingCart) {
    double itemTotal = item['price'] * item['quantity'];
    total += itemTotal;
    print('  ${item['product']}:');
    print('    Price: \$${item['price']}');
    print('    Quantity: ${item['quantity']}');
    print('    Specs: ${item['specs']}');
    print('    Subtotal: \$${itemTotal.toStringAsFixed(2)}');
  }
  print('  Total: \$${total.toStringAsFixed(2)}');

  /// List of lists with different operations
  print('\nDynamic grid operations:');
  List<List<String>> grid = List.generate(
    3,
    (i) => List.generate(3, (j) => 'Cell($i,$j)', growable: true),
    growable: true,
  );

  print('Grid:');
  for (var row in grid) {
    print('  $row');
  }

  /// Add a new row
  grid.add(['New1', 'New2', 'New3']);
  print('\nAfter adding row:');
  for (var row in grid) {
    print('  $row');
  }

  /// Add element to specific row
  grid[0].add('Extra');
  print('\nAfter adding element to first row:');
  print('  ${grid[0]}');
}
