import 'student.dart';
import 'university_student.dart';

void main() {
  Student studentOne = Student('Rahim', 20, 0.0);
  print(studentOne.age);
  print(studentOne.name);

  studentOne.name = "Karim";

  print(studentOne.name);
  studentOne.printDetails();
  print(studentOne.getCGpa);
  studentOne.setCGpa = 3.40;
  print(studentOne.getCGpa);
  studentOne.setCGpa = 0;
  print(studentOne.getCGpa);

  UniversityStudent rollOne = UniversityStudent('DU', 'CSE', 'Sakil', 20);
  print(rollOne.name);
  print(rollOne.age);
  rollOne.printNameAndAge();
}
