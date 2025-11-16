/// This program demonstrates the three main variable declaration keywords in Dart:
/// var, final, and const - each with different mutability and initialization rules
void main() {
  // VARIABLE DECLARATION KEYWORDS

  // var - type is automatically inferred from the assigned value
  // - Can be reassigned to values of the same type
  // - Cannot change type after first assignment (type-safe)
  // - Use when you need a mutable variable with automatic type inference
  var age = 30;
  age = 31; // valid - same type (int)
  // age = 'thirty-one'; // invalid - different type (String)
  print('Age: $age');

  // final - creates an immutable variable (can only be assigned once)
  // - Must be initialized when declared or in constructor
  // - Value is determined at runtime (can use functions, calculations)
  // - Use for values that shouldn't change after initialization
  final String city = 'New York';
  // city = 'Los Angeles'; // invalid - cannot reassign final variables
  print('City: $city');

  // const - creates a compile-time constant (immutable and known at compile time)
  // - Value must be determinable at compile time (no function calls, calculations)
  // - More memory efficient than final (shared across all instances)
  // - Cannot be reassigned after declaration
  // - Use for truly constant values like mathematical constants, configuration values
  const double pi = 3.14159;
  // pi = 3.14; // invalid - cannot reassign const variables
  print('Pi: $pi');
}
