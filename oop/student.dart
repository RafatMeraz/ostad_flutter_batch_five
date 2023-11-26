class Student {
  String name;
  int age;
  double _cGpa;

  Student(this.name, this.age, this._cGpa);

  void printDetails() {
    print('Name: $name\nAge: $age');
  }

  void _calculateCGpa() {
    _cGpa = _cGpa * 10;
  }

  // double getCGpa() {
  //   return _cGpa;
  // }

  double get getCGpa {
    return _cGpa;
  }

  // void setCGpa(double value) {
  //   if (value > 0) {
  //     _cGpa = value;
  //   }
  // }

  void set setCGpa(double value) {
    if (value > 0) {
      _cGpa = value;
    }
  }
}
