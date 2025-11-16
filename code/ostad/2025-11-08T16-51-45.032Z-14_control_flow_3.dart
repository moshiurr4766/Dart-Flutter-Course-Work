/// For-in Loop (Collections)
/* void main() {
  // Example 1: Looping through a List
  var fruits = ['Apple', 'Banana', 'Mango'];

  print('Fruits list:');
  for (var fruit in fruits) {
    print(fruit);
  }

  print('---');

  // Example 2: Looping through a Set
  var numbers = {10, 20, 30};
  print('Numbers set:');
  for (var n in numbers) {
    print(n);
  }

  print('---');

  // Example 3: Looping through a Map (values only)
  var capitals = {'Bangladesh': 'Dhaka', 'Japan': 'Tokyo', 'India': 'Delhi'};
  print('Country capitals:');
  for (var entry in capitals.entries) {
    print('${entry.key} → ${entry.value}');
  }
} */

/// Break and Continue
/* void main() {
  print('Example 1: Using continue');
  for (var i = 1; i <= 5; i++) {
    if (i == 3) {
      // Skip number 3
      continue;
    }
    print('Number: $i');
  }

  print('---');

  print('Example 2: Using break');
  for (var i = 1; i <= 5; i++) {
    if (i == 4) {
      // Stop the loop completely
      break;
    }
    print('Counting: $i');
  }

  print('---');

  // Example 3: Using both together
  for (var i = 1; i <= 6; i++) {
    if (i == 2) continue; // skip 2
    if (i == 5) break; // stop at 5
    print('Loop iteration: $i');
  }
} */

/// Nested Loops (Multiplication Table)
/* void main() {
  // Multiplication table from 1 to 5
  for (var i = 1; i <= 5; i++) {
    print('Multiplication Table for $i');
    for (var j = 1; j <= 10; j++) {
      print('$i × $j = ${i * j}');
    }
    print('---'); // Separator between tables
  }
} */
