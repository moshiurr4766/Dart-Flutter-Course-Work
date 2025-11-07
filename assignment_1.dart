import 'dart:io';

List<Map<String, dynamic>> studentRecords = [];

void storeStudentInput(String name, int id, int score) {
  studentRecords.add({"studentName": name, "studentId": id, "score": score});
}

void studentGrade() {
  studentRecords.sort((a, b) => b["score"].compareTo(a["score"]));
  int count = 0;
  for (var student in studentRecords) {
    String grade;
    count++;
    int score = student["score"];
    if (score >= 80 && score <= 100) {
      grade = "A+";
    } else if (score >= 70 && score < 80) {
      grade = "A";
    } else if (score >= 60 && score < 70) {
      grade = "A-";
    } else if (score >= 50 && score < 60) {
      grade = "B";
    } else if (score >= 40 && score < 50) {
      grade = "C";
    } else if (score >= 33 && score < 40) {
      grade = "D";
    } else {
      grade = "F";
    }
    print(
      "Student Name: ${student['studentName']}, ID: ${student['studentId']}, Score: ${student['score']}, Grade: $grade",
    );

  }
  print("Total Students: $count");
  print("Highest Score: ${studentRecords.first['score']}");
  print("Lowest Score: ${studentRecords.last['score']}");
}

void studentInput() {
  while (true) {
    print("Enter Student Name:");
    String? name = stdin.readLineSync();
    int id;
    while (true) {
      print("Enter Student ID:");
      id = int.parse(stdin.readLineSync()!);
      bool isExist = studentRecords.any(
        (student) => student["studentId"] == id,
      );
      if (isExist) {
        print("Student ID already exists. Please enter a unique ID.");
      } else {
        break;
      }
    }
    print("Enter Student Score:");
    int score = int.parse(stdin.readLineSync()!);
    storeStudentInput(name!, id, score);
    print("Do you want to add another student? (yes/no):");
    String? choice = stdin.readLineSync();
    if (choice!.toLowerCase() != 'yes') {
      break;
    }
  }
}

void main() {
  studentInput();
  studentGrade();
}