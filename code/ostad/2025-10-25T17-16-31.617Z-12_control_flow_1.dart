/// Control Flow - If Else Statements in Dart
void main() {
  ifElseExample();
  nestedIfExample();
  switchCaseExample();
  patternMatchingExample();
}

/// If-Else Example
void ifElseExample() {
  int temperature = 30;

  if (temperature > 30) {
    print('It\'s a hot day');
  } else if (temperature > 20) {
    print('It\'s a pleasant day');
  } else {
    print('It\'s a cold day');
  }
}

/// Nested If Statements
void nestedIfExample() {
  int age = 20;

  if (age >= 18) {
    print('Adult');
    if (age >= 65) {
      print('Senior');
    }
  } else {
    print('Minor');
  }
}

/// Switch Case Statement in Dart
void switchCaseExample() {
  String day = 'Monday';

  switch (day) {
    case 'Monday':
      print('Start of the work week');
      break;
    case 'Friday':
      print('End of the work week');
      break;
    default:
      print('Midweek day');
  }
}

/// Pattern Matching with Switch (Dart 3.0+)
void patternMatchingExample() {
  var value = 42;

  switch (value) {
    case int n when n.isEven:
      print('$n is even');
      break;
    case int n when n.isOdd:
      print('$n is odd');
      break;
    default:
      print('Not an integer');
  }
}
