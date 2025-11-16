// void main() {
// Print numbers from 1 to 10
//   for (int i = 1; i <= 10; i++) {
//     print('Number: $i');
//   }

//   // Print even numbers from 2 to 20
//   for (int i = 2; i <= 20; i += 2) {
//     print('Even Number: $i');
//   }
// }

/// For Loop with List Iteration
// void main() {
//   List<String> names = ['Alice', 'Bob', 'Charlie', 'Diana'];

//   for (int i = 0; i < names.length; i++) {
//     print('Name at index $i: ${names[i]}');
//   }
// }

/// While Loop – Countdown Example
// void main() {
//   int countdown = 5;

//   while (countdown > 0) {
//     print('Countdown: $countdown');
//     countdown--;
//   }

//   print('Launch!');
// }

/// Do-While Loop – Run at Least Once
// void main() {
//   int number = 6;

//   do {
//     print('This will print even though number > 5');
//     number++;
//   } while (number <= 5);
// }

/// Do-While Loop – Menu Simulation
/// Please run this from terminal using dart run <file_name.dart> command
// import 'dart:io';

// void main() {
//   String? choice;

//   do {
//     print('--- Simple Menu ---');
//     print('1. Say Hello');
//     print('2. Say Goodbye');
//     print('3. Exit');

//     print('Enter your choice: ');
//     choice = stdin.readLineSync();

//     if (choice == '1') {
//       print('Hello!');
//     } else if (choice == '2') {
//       print('Goodbye!');
//     } else if (choice != '3') {
//       print('Invalid choice, try again.');
//     }
//   } while (choice != '3');

//   print('Program ended.');
// }

/// Nested Loops Example
// void main() {
//   for (int row = 1; row <= 3; row++) {
//     for (int col = 1; col <= 3; col++) {
//       print('Row $row - Col $col');
//     }
//   }
// }

/// Loop Control – Break and Continue
// void main() {
//   for (int i = 1; i <= 10; i++) {
//     if (i == 5) {
//       print('Breaking at 5');
//       break;
//     }
//     print('Number: $i');
//   }

//   print('--- Continue Example ---');

//   for (int i = 1; i <= 10; i++) {
//     if (i % 2 == 0) {
//       continue; // skip even numbers
//     }
//     print('Odd Number: $i');
//   }
// }

