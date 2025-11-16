void main() {
  // 1. Storing data as key-value associations
  Map<String, dynamic> user = {
    'name': 'Alice',
    'age': 26,
    'email': 'alice@example.com',
  };

  print('User Name: ${user['name']}'); // Access by key
  print('User Age: ${user['age']}');

  // 2. Nested Maps (Map inside Map)
  Map<String, Map<String, dynamic>> users = {
    'user1': {
      'name': 'Alice',
      'age': 26,
    },
    'user2': {
      'name': 'Bob',
      'age': 30,
    },
  };

  print('Nested user name: ${users['user1']?['name']}');

  // 3. Methods: keys, values, entries, forEach
  print('Keys: ${user.keys}'); // → (name, age, email)
  print('Values: ${user.values}'); // → (Alice, 26, alice@example.com)
  print('Entries: ${user.entries}'); // → (name: Alice, age: 26, email: ...)

  // Loop through map using forEach
  user.forEach((key, value) {
    print('$key: $value');
  });

  // Loop using entries (more control)
  for (var entry in user.entries) {
    print('Key: ${entry.key}, Value: ${entry.value}');
  }

  // 4. Collection if / spread operators
  bool includePhone = true;
  Map<String, String>? optionalData = {'country': 'Bangladesh'};

  Map<String, dynamic> newUser = {
    ...user, // Spread existing map
    if (includePhone) 'phone': '1234567890', // Conditionally add key-value
    ...?optionalData, // Spread optional map safely (nullable)
  };

  print('New User: $newUser');
}
