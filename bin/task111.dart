import 'dart:io';
import '../lib/student.dart';
import '../lib/Student_Manager.dart';
import '../lib/student_repository.dart';

void main() {
  final repository = StudentRepository(); 
  final manager = StudentManager(repository); 
  print("Welcome to the Student Management System!");
 
  while (true) {
    print("Select an operation:");
    print("1.add student");
    print("2.display all students");
    print("3.delete student");
    print("4.update student gpa");
    print("5.exit");
    print("Operation number: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Enter Name: ");
        String name = stdin.readLineSync()!;
        print("Enter ID: ");
        String id = stdin.readLineSync()!;
        print("Enter Level: ");
        int level = int.parse(stdin.readLineSync()!);
        print("Enter GPA: ");
        double gpa = double.parse(stdin.readLineSync()!);
        
        manager.addStudent( name,id, level, gpa);
        

        break;

      case '2':
        manager.showAll();
        break;
      case '3':
      print("Enter student name");
      String name= stdin.readLineSync()!;
      manager.deleteStudent(name);
      print("Student deleted!");
      break;
      case '4':
        print("Enter student ID:");
String id = stdin.readLineSync()!;

print("Enter new GPA:");
double gpa = double.parse(stdin.readLineSync()!);

manager.updateStudentGpa(id, gpa);

print("GPA updated!");
        break;
  case '5':
 exit(0);
      default:
        print("Invalid choice!");
    }
  }
}