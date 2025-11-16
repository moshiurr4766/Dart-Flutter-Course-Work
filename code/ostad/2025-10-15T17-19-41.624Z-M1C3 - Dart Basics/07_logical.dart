void main() {
  // Logical Operators in Dart
  // These operators work with boolean values (true or false)
  // They are commonly used to combine multiple conditions

  // 1. AND Operator (&&)
  // Returns true only if BOTH conditions are true
  bool hasLicense = true;
  bool isAdult = true;

  bool canDrive = hasLicense && isAdult;
  print('AND Operator: Can drive? $canDrive'); // Output: true (both are true)

  // Example where one condition is false
  bool hasTicket = true;
  bool hasID = false;

  bool canEnter = hasTicket && hasID;
  print('Can enter? $canEnter'); // Output: false (one is false)

  // 2. OR Operator (||)
  // Returns true if AT LEAST ONE condition is true
  bool hasCard = false;
  bool hasCash = true;

  bool canPay = hasCard || hasCash;
  print(
      '\nOR Operator: Can pay? $canPay'); // Output: true (at least one is true)

  // Example where both are false
  bool isSunday = false;
  bool isSaturday = false;

  bool isWeekend = isSaturday || isSunday;
  print('Is weekend? $isWeekend'); // Output: false (both are false)

  // Example where both are true
  bool hasPhoneAvailable = true;
  bool hasLaptopAvailable = true;

  bool hasDeviceAvailable = hasPhoneAvailable || hasLaptopAvailable;
  print('Has device? $hasDeviceAvailable'); // Output: true (both are true)

  // 3. NOT Operator (!)
  // Reverses the boolean value (true becomes false, false becomes true)
  bool isRaining = false;

  bool isSunny = !isRaining;
  print(
      '\nNOT Operator: Is sunny? $isSunny'); // Output: true (opposite of false)

  bool isOnline = true;
  bool isOffline = !isOnline;
  print('Is offline? $isOffline'); // Output: false (opposite of true)

  // 4. Combining AND and OR
  // You can use multiple logical operators together
  int age = 25;
  bool hasPermission = true;

  // Check if person is adult (18+) AND has permission
  bool canAccess = (age >= 18) && hasPermission;
  print('\nCombining operators: Can access? $canAccess'); // Output: true

  // Check if person is child (under 12) OR senior (over 60)
  bool getsDiscount = (age < 12) || (age > 60);
  print('Gets discount? $getsDiscount'); // Output: false (age is 25)

  // 5. Real-world example: Login system
  String username = 'admin';
  String password = '1234';

  bool isValidUser = (username == 'admin') && (password == '1234');
  print('\nLogin example: Is valid user? $isValidUser'); // Output: true

  // Wrong password example
  String wrongPassword = 'wrong';
  bool isValidUser2 = (username == 'admin') && (wrongPassword == '1234');
  print('Is valid user with wrong password? $isValidUser2'); // Output: false

  // 6. Real-world example: Eligibility check
  int studentAge = 16;
  bool hasParentConsent = true;

  // Can participate if: (age 18+) OR (age 16+ with parent consent)
  bool canParticipate =
      (studentAge >= 18) || (studentAge >= 16 && hasParentConsent);
  print(
      '\nEligibility example: Can participate? $canParticipate'); // Output: true

  // 7. Using NOT with other operators
  int score = 45;
  bool isPassing = score >= 50;
  bool isFailing = !isPassing;

  print(
      '\nUsing NOT: Is failing? $isFailing'); // Output: true (opposite of false)

  // 8. Truth table for AND (&&)
  print('\nTruth table for AND (&&):');
  bool andResult1 = true && true;
  bool andResult2 = true && false;
  bool andResult3 = false && true;
  bool andResult4 = false && false;
  print('true && true = $andResult1'); // Output: true
  print('true && false = $andResult2'); // Output: false
  print('false && true = $andResult3'); // Output: false
  print('false && false = $andResult4'); // Output: false

  // 9. Truth table for OR (||)
  print('\nTruth table for OR (||):');
  bool orResult1 = true || true;
  bool orResult2 = true || false;
  bool orResult3 = false || true;
  bool orResult4 = false || false;
  print('true || true = $orResult1'); // Output: true
  print('true || false = $orResult2'); // Output: true
  print('false || true = $orResult3'); // Output: true
  print('false || false = $orResult4'); // Output: false

  // 10. Truth table for NOT (!)
  print('\nTruth table for NOT (!):');
  print('!true = ${!true}'); // Output: false
  print('!false = ${!false}'); // Output: true

  // 11. Complex condition example
  int temperature = 25;
  bool isRainy = false;

  // Good weather: temperature between 20-30 AND not raining
  bool isGoodWeather = (temperature >= 20 && temperature <= 30) && !isRainy;
  print('\nWeather example: Is good weather? $isGoodWeather'); // Output: true

  // 12. Using parentheses for clarity
  // Parentheses make complex conditions easier to read
  bool cond1 = true;
  bool cond2 = false;
  bool cond3 = true;

  // Without proper grouping, results might be confusing
  bool res1 = cond1 || cond2 && cond3;
  print('\nWithout parentheses: $res1'); // Output: true

  // With parentheses for clarity
  bool res2 = cond1 || (cond2 && cond3);
  print('With parentheses: $res2'); // Output: true

  // Different grouping gives different result
  bool res3 = (cond1 || cond2) && cond3;
  print('Different grouping: $res3'); // Output: true

  // 13. Practical example: Age group classification
  int personAge = 15;

  bool isChild = personAge < 13;
  bool isTeenager = personAge >= 13 && personAge < 20;
  bool isAdultPerson = personAge >= 20;

  print('\nAge classification (age: $personAge):');
  print('Is child? $isChild'); // Output: false
  print('Is teenager? $isTeenager'); // Output: true
  print('Is adult? $isAdultPerson'); // Output: false

  // 14. Practical example: Access control
  bool isEmployeeUser = true;
  bool isManagerUser = false;
  bool isBusinessHoursNow = true;

  // Access granted if: (employee during business hours) OR (manager anytime)
  bool hasAccessRight = (isEmployeeUser && isBusinessHoursNow) || isManagerUser;
  print(
      '\nAccess control: Has access? $hasAccessRight'); // Output: true (employee during business hours)

  // 15. Short-circuit evaluation
  // && stops checking if first condition is false
  // || stops checking if first condition is true
  print('\nShort-circuit evaluation:');

  int x = 5;
  // The second part (x > 10) won't be checked because (x < 0) is already false
  bool check1 = (x < 0) && (x > 10);
  print('Short-circuit AND: $check1'); // Output: false

  // The second part (x < 0) won't be checked because (x > 0) is already true
  bool check2 = (x > 0) || (x < 0);
  print('Short-circuit OR: $check2'); // Output: true
}
