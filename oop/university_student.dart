/// Parent/super/base class
/// child class
/// childClassName extends parentClass
class UniversityStudent extends Person {
  late String universityName;
  late String department;

  UniversityStudent(
      String universityName, String department, String name, int age) {
    this.department = department;
    this.universityName = universityName;
    super.name = name;
    super.age = age;
  }
}

class Person {
  String name = '';
  int age = 0;

  void printNameAndAge() {
    print('Name: $name\nAge: $age');
  }
}
