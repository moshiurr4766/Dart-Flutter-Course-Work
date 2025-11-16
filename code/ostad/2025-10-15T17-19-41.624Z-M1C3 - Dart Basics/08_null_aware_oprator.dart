void main() {
  // Null-Aware Operators in Dart
  // These operators help you safely work with values that might be null
  // null means "no value" or "empty"

  // 1. Null-aware Access Operator (?.)
  // Safely access properties/methods when a variable might be null
  String? name; // ? means this can be null
  name = null; // Currently has no value

  // Without ?. this would cause an error
  // int? length = name.length; // ERROR!

  // With ?. it safely returns null instead of crashing
  int? length = name?.length;
  print('Name length: $length'); // Output: null (safely handled)

  // When name has a value
  name = 'John';
  length = name?.length;
  print('Name length: $length'); // Output: 4

  // 2. Null-aware Assignment Operator (??=)
  // Assigns a value ONLY if the variable is currently null
  String? username;

  print('\nBefore assignment: $username'); // Output: null

  username ??= 'Guest'; // Assigns 'Guest' because username is null
  print('After first ??=: $username'); // Output: Guest

  username ??= 'Admin'; // Does NOT assign because username already has a value
  print('After second ??=: $username'); // Output: Guest (unchanged)

  // 3. Null Coalescing Operator (??)
  // Provides a default value if something is null
  String? userInput;
  // If userInput is null, use 'Default' instead
  String displayName = userInput ?? 'Default';
  print('\nDisplay name: $displayName'); // Output: Default

  // When userInput has a value
  userInput = 'Alice';
  displayName = userInput ?? 'Default';
  print('Display name: $displayName'); // Output: Alice

  // 4. Practical Example: User Profile
  String? email;
  String? phoneNumber = '123-456-7890';

  print('\nUser Profile:');
  print('Email: ${email ?? 'Not provided'}'); // Output: Not provided
  print('Phone: ${phoneNumber ?? 'Not provided'}'); // Output: 123-456-7890

  // 5. Chaining Null-Aware Operators
  String? firstName;
  String? lastName = 'Smith';

  // Safely access and provide defaults
  String fullName = '${firstName ?? 'Unknown'} ${lastName ?? 'Unknown'}';
  print('\nFull name: $fullName'); // Output: Unknown Smith

  // 6. Null-Aware with Lists
  List<String>? items; // List might be null

  // Safely check length
  int? itemCount = items?.length;
  print('\nItem count: $itemCount'); // Output: null

  // Provide default for empty/null list
  int count = items?.length ?? 0;
  print('Item count with default: $count'); // Output: 0

  items = ['apple', 'banana', 'orange'];
  count = items?.length ?? 0;
  print('Item count now: $count'); // Output: 3

  // 7. Practical Example: Configuration Settings
  String? theme; // User hasn't set a theme
  int? fontSize; // User hasn't set font size

  // Use defaults if not set
  String activeTheme = theme ?? 'light';
  int activeFontSize = fontSize ?? 14;

  print('\nSettings:');
  print('Theme: $activeTheme'); // Output: light
  print('Font size: $activeFontSize'); // Output: 14

  // 8. Using ??= for Initialization
  String? cache;

  // Initialize cache only if it's empty
  cache ??= 'Initial data';
  print('\nCache: $cache'); // Output: Initial data

  // Try to set again (won't change)
  cache ??= 'New data';
  print('Cache: $cache'); // Output: Initial data (unchanged)

  // 9. Null-Aware with Methods
  String? text;

  // Safely call methods
  String? upperText = text?.toUpperCase();
  print('\nUpper text: $upperText'); // Output: null

  text = 'hello';
  upperText = text?.toUpperCase();
  print('Upper text: $upperText'); // Output: HELLO

  // 10. Combining Multiple Operators
  String? userTitle;
  String? userNickname;
  String? userRealName = 'Bob';

  // Try multiple fallbacks
  String displayTitle =
      userTitle ?? userNickname ?? userRealName ?? 'Anonymous';
  print('\nDisplay title: $displayTitle'); // Output: Bob (first non-null value)
}
