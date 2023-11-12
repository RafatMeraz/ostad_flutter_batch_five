void main() {
  int age = 12;
  double gpa = 4.50;
  String address = 'dsfasd';
  String value = '3.12';
  String inValue = '3';

  String human = age.toString();
  print(human);
  print(human.runtimeType);

  int a = int.parse(inValue);
  print(a);
  print(a.runtimeType);

  print(gpa.toInt());
  print(age.toDouble());

  double x = double.parse(value);
  print(x);
  print(x.runtimeType);
}