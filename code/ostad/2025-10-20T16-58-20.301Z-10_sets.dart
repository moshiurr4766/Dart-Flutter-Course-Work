void main() {
  // Method 1: Using 'var'
  var fruits = <String>{}; // Empty Set of Strings
  fruits.add('Apple');
  fruits.add('Banana');
  fruits.add('Apple'); // Duplicate ignored

  print(fruits); // {Apple, Banana}

  // Method 2: Using 'Set<Type>'
  Set<String> usernames = {}; // Empty Set of Strings
  usernames.add('alice');
  usernames.add('bob');
  usernames.add('alice'); // Duplicate ignored

  print(usernames); // {alice, bob}

  // Set Operation: Union
  var a = {'apple', 'banana'};
  var b = {'banana', 'orange'};
  print(a.union(b)); // {apple, banana, orange}

  // Set Operation: Intersection
  var c = {'apple', 'banana'};
  var d = {'banana', 'orange'};
  print(c.intersection(d)); // {banana}

  // Set Operation: Difference
  var e = {'apple', 'banana'};
  var f = {'banana', 'orange'};
  print(e.difference(f)); // {apple}
}
