void main() {
  int g = 3;
  // object/instance creation
  Student studentOne = Student('Rafi', 26, 'dsfasdf');

  print(studentOne.name);
  print(studentOne.age);
  print(studentOne.address);
  studentOne.doing('abc');
  studentOne.coding();

  Student studentTwo = Student('Tanmoy', 23, 'Dhaka Mirpur');

  print(studentTwo.name);
  print(studentTwo.age);
  print(studentTwo.address);
  studentTwo.coding();
  studentTwo.doing('home wrok');
  int result = studentTwo.add(12, 13);
  print(result);

  Student studentThree = Student('Zehad', 21, 'Tangail');
  print(studentThree.name);

  print(Student.noOfObjects);
  print(Student.getClassName());
}

// class
class Student {
  // properties/attributes
  late String name;
  late int age;
  late String address;

  static int noOfObjects = 0;

  // construct the object of this class
  // Constructor
  Student(String name, int a, String address) {
    print('Object is creating');
    this.name = name;
    age = a;
    this.address = address;
    noOfObjects += 1;
  }

  static String getClassName() {
    return 'This is student class';
  }

  // method
  void coding() {
    print('$name is coding');
  }

  void doing(String doingWhat) {
    print('$name is doing $doingWhat');
  }

  int add(int a, int b) {
    return a + b;
  }
}
