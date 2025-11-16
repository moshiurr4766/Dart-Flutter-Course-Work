void main() {
  // Arithmetic Operators in Dart

  // 1. Addition (+)
  // Adds two numbers together
  int a = 10;
  int b = 5;
  int sum = a + b;
  print('Addition: $a + $b = $sum'); // Output: 15

  // 2. Subtraction (-)
  // Subtracts the second number from the first
  int difference = a - b;
  print('Subtraction: $a - $b = $difference'); // Output: 5

  // 3. Multiplication (*)
  // Multiplies two numbers
  int product = a * b;
  print('Multiplication: $a * $b = $product'); // Output: 50

  // 4. Division (/)
  // Divides the first number by the second (returns double)
  double quotient = a / b;
  print('Division: $a / $b = $quotient'); // Output: 2.0

  // 5. Integer Division (~/)
  // Divides and returns only the integer part (no decimal)
  int intDivision = a ~/ b;
  print('Integer Division: $a ~/ $b = $intDivision'); // Output: 2

  // Example with remainder
  int c = 17;
  int d = 5;
  int intDiv = c ~/ d;
  print('Integer Division: $c ~/ $d = $intDiv'); // Output: 3

  // 6. Modulus (%)
  // Returns the remainder after division
  int remainder = a % b;
  print('Modulus: $a % $b = $remainder'); // Output: 0

  // Example with actual remainder
  int rem = c % d;
  print('Modulus: $c % $d = $rem'); // Output: 2

  // 7. Unary Minus (-)
  // Negates a number (changes sign)
  int positive = 42;
  int negative = -positive;
  print('Unary Minus: -($positive) = $negative'); // Output: -42

  // 8. Increment Operator (++)
  // Increases value by 1

  // Pre-increment: increments first, then uses the value
  int x = 5;
  int preIncrement = ++x;
  print('Pre-increment: x = $x, result = $preIncrement'); // x = 6, result = 6

  // Post-increment: uses the value first, then increments
  int y = 5;
  int postIncrement = y++;
  print('Post-increment: y = $y, result = $postIncrement'); // y = 6, result = 5

  // 9. Decrement Operator (--)
  // Decreases value by 1

  // Pre-decrement: decrements first, then uses the value
  int m = 10;
  int preDecrement = --m;
  print('Pre-decrement: m = $m, result = $preDecrement'); // m = 9, result = 9

  // Post-decrement: uses the value first, then decrements
  int n = 10;
  int postDecrement = n--;
  print(
      'Post-decrement: n = $n, result = $postDecrement'); // n = 9, result = 10

  // 10. Working with doubles
  // Arithmetic operations with decimal numbers
  double num1 = 15.5;
  double num2 = 4.2;

  print('\nWorking with doubles:');
  print('Addition: $num1 + $num2 = ${num1 + num2}');
  print('Subtraction: $num1 - $num2 = ${num1 - num2}');
  print('Multiplication: $num1 * $num2 = ${num1 * num2}');
  print('Division: $num1 / $num2 = ${num1 / num2}');

  // 11. Mixed operations (int and double)
  // When you mix int and double, the result is double
  int intNum = 10;
  double doubleNum = 3.5;
  var result = intNum + doubleNum; // result is double
  print('\nMixed operation: $intNum + $doubleNum = $result'); // Output: 13.5

  // 12. Order of operations (PEMDAS/BODMAS)
  // Parentheses, Exponents, Multiplication/Division, Addition/Subtraction
  int calculation = 5 + 3 * 2; // Multiplication first
  print('\nWithout parentheses: 5 + 3 * 2 = $calculation'); // Output: 11

  int calculationWithParens = (5 + 3) * 2; // Parentheses first
  print('With parentheses: (5 + 3) * 2 = $calculationWithParens'); // Output: 16

  // 13. Compound assignment operators
  // Combines arithmetic operation with assignment
  int value = 10;

  value += 5; // Same as: value = value + 5
  print('\nAfter += 5: $value'); // Output: 15

  value -= 3; // Same as: value = value - 3
  print('After -= 3: $value'); // Output: 12

  value *= 2; // Same as: value = value * 2
  print('After *= 2: $value'); // Output: 24

  value ~/= 4; // Same as: value = value ~/ 4
  print('After ~/= 4: $value'); // Output: 6

  value %= 4; // Same as: value = value % 4
  print('After %= 4: $value'); // Output: 2
}
