/// This program demonstrates various string operations in Dart
/// including creation, interpolation, manipulation, and conversion methods
void main() {
  // Basic string creation using single quotes
  print('Basic String Operations in Dart');
  String greeting = 'Hello';
  String name = 'Bob';

  // String interpolation - embedding variables inside strings using $
  // Use ${} for expressions or when variable name is followed by other characters
  print('\nString Interpolation Example:');
  String message = '$greeting, $name! Welcome to Dart programming.';
  print(message);

  // Multi-line strings using triple quotes (''' or """)
  // Useful for long text, SQL queries, or formatted content
  print('\nMulti-line String Example:');
  String multiLine = '''This is a multi-line string in Dart.
You can write text across multiple lines.''';
  print(multiLine);

  // Raw strings - prefix with 'r' to treat escape sequences as literal characters
  // Useful for regular expressions, file paths, or when you need literal backslashes
  print('\nRaw String Example:');
  String rawString =
      r'This is a raw string.\nNew lines and \t tabs are not processed.';
  print(rawString);

  // String case conversion methods
  print('\nString Case Conversion Example:');
  String upperCase = name.toUpperCase(); // Converts all characters to uppercase
  String lowerCase =
      greeting.toLowerCase(); // Converts all characters to lowercase
  print('Uppercase Name: $upperCase');
  print('Lowercase Greeting: $lowerCase');

  // Getting the length (number of characters) of a string
  print('\nString Length Example:');
  int length = message.length;
  print('Message Length: $length');

  // Searching within strings - returns true if substring is found
  print('\nString Search Example:');
  bool containsDart = message.contains('Dart');
  print('Message contains "Dart": $containsDart');

  // String replacement - replaces all occurrences of a substring
  // Use replaceFirst() to replace only the first occurrence
  print('\nString Replacement Example:');
  String replacedMessage = message.replaceAll('Bob', 'Alice');
  print('Replaced Message: $replacedMessage');

  // Splitting strings into a list based on a delimiter
  // Useful for parsing CSV data, space-separated values, etc.
  print('\nString Splitting Example:');
  List<String> words = message.split(' ');
  print('Words in Message: $words');

  // Removing whitespace from beginning and end of string
  // Also available: trimLeft() and trimRight() for specific sides
  print('\nString Trimming Example:');
  String trimmed = '   Extra spaces   '.trim();
  print('Trimmed String: "$trimmed"');

  // Extracting a portion of string using start and end indices
  // substring(start, end) - end is exclusive, substring(start) goes to end
  print('\nString Substring Example:');
  String substring = message.substring(7, 10);
  print('Substring: $substring');

  // Checking if string starts or ends with specific text
  // Useful for validation, file extension checking, etc.
  print('\nString Start/End Check Example:');
  bool startsWithHello = message.startsWith('Hello');
  bool endsWithProgramming = message.endsWith('programming.');
  print('Starts with "Hello": $startsWithHello');
  print('Ends with "programming.": $endsWithProgramming');

  // Joining list elements into a single string with a separator
  // Opposite of split() - useful for creating CSV, paths, etc.
  print('\nString Joining Example:');
  String combined = ['Dart', 'is', 'fun'].join(' ');
  print('Combined String: $combined');

  // String repetition using the * operator
  // Creates a new string by repeating the original string n times
  print('\nString Repetition Example:');
  String repeated = 'Dart! ' * 3;
  print('Repeated String: $repeated');

  // Finding the position (index) of a substring
  // Returns -1 if not found, also available: lastIndexOf() for last occurrence
  print('\nString IndexOf Example:');
  int index = message.indexOf('Dart');
  print('Index of "Dart": $index');

  // Checking if strings are empty or not
  // isEmpty returns true for empty strings, isNotEmpty is the opposite
  print('\nString Empty Check Example:');
  bool isEmpty = ''.isEmpty;
  bool isNotEmpty = message.isNotEmpty;
  print('Is empty string: $isEmpty');
  print('Is not empty message: $isNotEmpty');

  // Converting strings to numbers
  // Use int.tryParse() or double.tryParse() for safe parsing (returns null if invalid)
  print('\nString to Number (int & double) Conversion Example:');
  String numberString = '123';
  int number = int.parse(numberString); // Converts string to integer
  print('Parsed Number: $number');

  String floatString = '45.67';
  double floatNumber = double.parse(floatString); // Converts string to double
  print('Parsed Float Number: $floatNumber');

  // Converting numbers back to formatted strings
  // toStringAsFixed() controls decimal places, toString() for basic conversion
  print('\nNumber to String Conversion Example:');
  String formatted = 'The number is ${number.toStringAsFixed(2)}';
  print(formatted);
}
