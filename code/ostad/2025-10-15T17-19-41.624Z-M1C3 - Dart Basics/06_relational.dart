void main() {
  // Relational (Comparison) Operators in Dart
  // These operators compare two values and return a boolean (true or false)

  // 1. Equal to (==)
  // Checks if two values are equal
  int a = 10;
  int b = 10;
  int c = 5;

  bool isEqual = a == b;
  print('Equal to: $a == $b is $isEqual'); // Output: true

  bool isEqual2 = a == c;
  print('Equal to: $a == $c is $isEqual2'); // Output: false

  // 2. Not Equal to (!=)
  // Checks if two values are not equal
  bool isNotEqual = a != c;
  print('Not equal to: $a != $c is $isNotEqual'); // Output: true

  bool isNotEqual2 = a != b;
  print('Not equal to: $a != $b is $isNotEqual2'); // Output: false

  // 3. Greater than (>)
  // Checks if the left value is greater than the right value
  bool isGreater = a > c;
  print('Greater than: $a > $c is $isGreater'); // Output: true

  bool isGreater2 = c > a;
  print('Greater than: $c > $a is $isGreater2'); // Output: false

  // 4. Less than (<)
  // Checks if the left value is less than the right value
  bool isLess = c < a;
  print('Less than: $c < $a is $isLess'); // Output: true

  bool isLess2 = a < c;
  print('Less than: $a < $c is $isLess2'); // Output: false

  // 5. Greater than or Equal to (>=)
  // Checks if the left value is greater than or equal to the right value
  int x = 15;
  int y = 15;
  int z = 10;

  bool isGreaterOrEqual = x >= y;
  print('Greater than or equal: $x >= $y is $isGreaterOrEqual'); // Output: true

  bool isGreaterOrEqual2 = x >= z;
  print(
      'Greater than or equal: $x >= $z is $isGreaterOrEqual2'); // Output: true

  bool isGreaterOrEqual3 = z >= x;
  print('Greater than or equal: $z >= $x is $isGreaterOrEqual3'); // Ans: false

  // 6. Less than or Equal to (<=)
  // Checks if the left value is less than or equal to the right value
  bool isLessOrEqual = y <= x;
  print('Less than or equal: $y <= $x is $isLessOrEqual'); // Output: true

  bool isLessOrEqual2 = z <= x;
  print('Less than or equal: $z <= $x is $isLessOrEqual2'); // Output: true

  bool isLessOrEqual3 = x <= z;
  print('Less than or equal: $x <= $z is $isLessOrEqual3'); // Output: false

  // 7. Comparing doubles
  // Relational operators work with decimal numbers too
  double num1 = 10.5;
  double num2 = 10.5;
  double num3 = 8.3;

  print('\nComparing doubles:');
  print('$num1 == $num2 is ${num1 == num2}'); // Output: true
  print('$num1 > $num3 is ${num1 > num3}'); // Output: true
  print('$num3 < $num1 is ${num3 < num1}'); // Output: true

  // 8. Comparing Strings
  // Strings can be compared for equality (== and !=)
  String str1 = 'apple';
  String str2 = 'banana';
  String str3 = 'apple';

  print('\nComparing strings:');
  print("'$str1' == '$str3' is ${str1 == str3}"); // Output: true
  print("'$str1' == '$str2' is ${str1 == str2}"); // Output: false
  print("'$str1' != '$str2' is ${str1 != str2}"); // Output: true

  // 9. Using in conditional statements
  // Relational operators are commonly used in if-else statements
  int age = 18;

  print('\nUsing in conditions:');
  if (age >= 18) {
    print('You are an adult (age: $age)');
  } else {
    print('You are a minor (age: $age)');
  }

  // 10. Comparing with different types
  // When comparing int and double, Dart handles the comparison correctly
  int intValue = 10;
  double doubleValue = 10.0;

  print('\nComparing int and double:');
  print('$intValue == $doubleValue is ${intValue == doubleValue}'); // Ans: true

  // 11. Chain comparisons in expressions
  // You can use multiple relational operators in logical expressions
  int score = 75;

  print('\nChain comparisons:');
  if (score >= 60 && score < 80) {
    print('Score $score is between 60 and 79');
  }

  // 12. Using relational operators with variables
  int min = 0;
  int max = 100;
  int value = 50;

  bool isInRange = value >= min && value <= max;
  print('\nIs $value in range [$min, $max]? $isInRange'); // Output: true

  // 13. Negating comparisons
  // You can use ! (not) operator with comparisons
  int num = 20;
  bool isNotGreaterThan30 = !(num > 30);
  print('\nIs $num NOT greater than 30? $isNotGreaterThan30'); // Output: true

  // 14. Practical example: Finding maximum
  int val1 = 45;
  int val2 = 32;

  int maximum = val1 > val2 ? val1 : val2;
  print('\nMaximum of $val1 and $val2 is: $maximum'); // Output: 45

  // 15. Practical example: Finding minimum
  int minimum = val1 < val2 ? val1 : val2;
  print('Minimum of $val1 and $val2 is: $minimum'); // Output: 32
}
