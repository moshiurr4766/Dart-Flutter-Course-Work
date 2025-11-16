/// This program demonstrates the fundamental data types in Dart
/// including primitive types, collections, and type system features
void main() {
  // PRIMITIVE DATA TYPES

  // int - represents whole numbers (positive, negative, or zero)
  // Range: -2^63 to 2^63 - 1 on 64-bit platforms
  int count = 10;
  print('Count: $count');

  // double - represents floating-point numbers (decimals)
  // Uses 64-bit IEEE 754 standard for precision
  double price = 19.99;
  print('Price: $price');

  // String - represents a sequence of UTF-16 characters
  // Immutable - cannot be changed after creation, operations create new strings
  String message = 'Hello, Dart!';
  print('Message: $message');

  // bool - represents logical values: true or false
  // Used for conditions, flags, and logical operations
  bool isActive = true;
  print('Is Active: $isActive');

  // SPECIAL TYPES

  // dynamic - can hold any type and allows type to change at runtime
  // Use sparingly - loses compile-time type checking benefits
  // Good for JSON parsing, API responses, or when type is truly unknown
  dynamic variable = 'I am a string';
  print('Dynamic variable (string): $variable');
  variable = 42; // Same variable now holds an integer
  print('Dynamic variable (int): $variable');

  // COLLECTION TYPES

  // List - ordered, indexed collection that can contain duplicates
  // Similar to arrays in other languages, but more flexible
  // <String> specifies the type of elements (generic type parameter)
  List<dynamic> fruits = ['Apple', 'Banana', 'Cherry', 42];
  print('Fruits: $fruits');

  // Additional examples of other important types:

  // num - parent type of both int and double
  // Useful when you need to accept either integers or decimals
  num temperature = 98.6; // Can be int or double
  temperature = 99; // Can change between int and double
  print('Temperature: $temperature');

  // var - type inference - Dart determines the type automatically
  // Type is fixed once assigned (unlike dynamic)
  var autoString = 'Dart infers this is a String'; // Type: String
  var autoNumber = 42; // Type: int
  print('Auto String: $autoString');
  print('Auto Number: $autoNumber');

  // Object - the base class of all Dart objects
  // Everything in Dart is an object (even numbers, functions, null)
  Object anything = 'Can hold any Dart object';
  print('Object type: $anything');

  // Runes - represents Unicode code points in a string
  // Useful for emojis and special characters
  Runes heart = Runes('\u2665'); // Unicode for heart symbol
  print('Heart symbol: ${String.fromCharCodes(heart)}');
}
