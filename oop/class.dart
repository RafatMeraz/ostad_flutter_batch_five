void main() {
  int a = 34;
  Person rafat = Person();
  rafat.name = 'asfdsafads';
  rafat.noOfHands = 34;
  rafat.noOfLegs = 6;

  print(rafat.name);
  print(rafat.noOfLegs);
  print(Person());
}

class Person {
  String name = '';
  int noOfHands = 0;
  int noOfLegs = 0;
}
