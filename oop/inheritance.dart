/// IS-A relationship

class Human {
  String name;

  Human(this.name);

  void eating() {}

  void moving() {
    print('human is moving');
  }
}

class Student extends Human {
  double _gpa = 3.25;

  Student(this._gpa, String name) : super(name);

  // Student(this._gpa, super.name);

  void attendingClass() {}

  double gpa() {
    return _gpa;
  }

  // overriding
  @override
  void moving({String? name}) {
    print('Moving from student class');
  }
}

class Employee extends Human {
  Employee(super.name);

  void working() {}
}

class Employer extends Human {
  Employer(super.name);

  void maintainEmployee() {}
}

class BusinessMan extends Employer {
  BusinessMan(super.name);
}

class NewClass {}

void main() {
  Student studentOne = Student(4.0, "Hasan");
  studentOne.moving();
  studentOne.eating();
  studentOne.attendingClass();
  studentOne.gpa();

  // polymorphism
  Human elonMusk = Employer('Employeeresjdjf dsfjsld');
  Human rafat = Employee('Rafat');
  Human newStudent = Student(23.56, 'Rakib');

  Human salman = BusinessMan('Salaman Bin');

  NewClass test = NewClass();
}
