void main() {
 greeting('Yasin'); // Argument
 int result = add(23, 675);
 print(result);
 int value = result * 10;
 print(value);
 add(537, 8);
 add(12, 34);
 String us = getUserName('Jakir');
 printUserDetails('Rohan', 28, 'KUET', 1996);
 printUserDetailsTwo(
      age: 67, name: 'Hasan',);
}

/// Function definition
/// Parameter - name : datatype- String
void greeting(String name) {
  print('Welcome $name');
  print('How are you?');
  print('Dinner?');
  String value = getUserName(name);
  print(value);
}

int add(int a, int b) {
  return a + b;
}

String getUserName(String userName) {
  return '$userName is a good player';
}

/// Optional param
void printUserDetails(String name, int age, [String university = 'Unknown', int dob = 1990]) {
  print('Name : $name\nAge: $age\nUniversity: $university\nDOB: $dob');
}

/// Optional param, named params
void printUserDetailsTwo(
    {required String name, required int age, String university = 'Unknown', int dob = 1990}) {
  print('Name : $name\nAge: $age\nUniversity: $university\nDOB: $dob');
}