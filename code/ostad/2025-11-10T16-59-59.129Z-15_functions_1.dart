/// Functions - Parameters in Dart
void main() {
  positionalParametersExample();
  namedParametersExample();
  requiredNamedParametersExample();
  defaultValuesExample();
  optionalParametersExample();
  mixedParametersExample();
}

/// Positional Parameters
/// Parameters are passed in the order they are defined
void greet(String name, int age) {
  print('Hello, $name! You are $age years old.');
}

void positionalParametersExample() {
  print('=== Positional Parameters ===');

  greet('Alice', 25);
  greet('Bob', 30);

  // Must pass parameters in correct order
  // greet(25, 'Alice'); // Error: wrong order
}

/// Named Parameters (Optional by default)
/// Parameters are passed by name, order doesn't matter
void createUser({String? name, int? age, String? email}) {
  print('User created:');
  print('  Name: ${name ?? 'Not provided'}');
  print('  Age: ${age ?? 'Not provided'}');
  print('  Email: ${email ?? 'Not provided'}');
}

void namedParametersExample() {
  print('\n=== Named Parameters ===');

  // Can pass parameters in any order
  createUser(name: 'Alice', age: 25, email: 'alice@example.com');
  createUser(email: 'bob@example.com', name: 'Bob', age: 30);
  createUser(name: 'Charlie'); // Other parameters are null
  createUser(); // All parameters are optional
}

/// Required Named Parameters
/// Named parameters that must be provided
void login({required String username, required String password}) {
  print('Logging in:');
  print('  Username: $username');
  print('  Password: ${'*' * password.length}');
}

void requiredNamedParametersExample() {
  print('\n=== Required Named Parameters ===');

  login(username: 'admin', password: 'secret123');
  login(password: 'mypass', username: 'user'); // Order doesn't matter

  // login(username: 'admin'); // Error: password is required
  // login(); // Error: both are required
}

/// Default Values for Named Parameters
/// Named parameters can have default values
void orderCoffee({
  String size = 'medium',
  String type = 'latte',
  int sugar = 1,
  bool extraShot = false,
}) {
  print('Coffee Order:');
  print('  Size: $size');
  print('  Type: $type');
  print('  Sugar: $sugar spoon(s)');
  print('  Extra shot: ${extraShot ? 'Yes' : 'No'}');
}

void defaultValuesExample() {
  print('\n=== Default Values for Named Parameters ===');

  orderCoffee(); // Uses all defaults
  orderCoffee(size: 'large'); // Only override size
  orderCoffee(type: 'cappuccino', extraShot: true); // Override multiple
  orderCoffee(size: 'small', type: 'espresso', sugar: 0, extraShot: true);
}

/// Optional Positional Parameters
/// Positional parameters that can be omitted
void introduce(String name, [String? title, int? age]) {
  print('Introduction:');
  if (title != null) {
    print('  $title $name');
  } else {
    print('  $name');
  }
  if (age != null) {
    print('  Age: $age');
  }
}

void calculateArea(double length, [double width = 1.0]) {
  double area = length * width;
  print('Area: $area (length: $length, width: $width)');
}

void optionalParametersExample() {
  print('\n=== Optional Positional Parameters ===');

  introduce('Alice');
  introduce('Bob', 'Dr.');
  introduce('Charlie', 'Mr.', 35);

  calculateArea(5.0); // width defaults to 1.0
  calculateArea(5.0, 3.0); // both provided
}

/// Mixed Parameters
/// Combining positional and named parameters
void createProfile(String name, int age,
    {String? email, String? phone, bool isActive = true}) {
  print('Profile:');
  print('  Name: $name');
  print('  Age: $age');
  if (email != null) print('  Email: $email');
  if (phone != null) print('  Phone: $phone');
  print('  Active: $isActive');
}

void sendMessage(String recipient, String message, [String? subject]) {
  print('\nMessage:');
  if (subject != null) print('  Subject: $subject');
  print('  To: $recipient');
  print('  Body: $message');
}

void mixedParametersExample() {
  print('\n=== Mixed Parameters ===');

  createProfile('Alice', 25);
  createProfile('Bob', 30, email: 'bob@example.com');
  createProfile('Charlie', 28,
      email: 'charlie@example.com', phone: '+1234567890');
  createProfile('Diana', 32,
      email: 'diana@example.com', phone: '+1234567890', isActive: false);

  sendMessage('alice@example.com', 'Hello!');
  sendMessage('bob@example.com', 'Hello!', 'Greeting');
}
