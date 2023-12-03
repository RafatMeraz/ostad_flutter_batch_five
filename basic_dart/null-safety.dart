void main() {
  late String name;

  name = 'dfd';

  print(name);

  int? a;
  print(a);

  a = 34;

  print(a);

  a = null;

  if (a == null) {
    print(1);
  } else {
    print(a);
  }

  // ?? - if-null / soft unwrap
  print(a ?? 39854);

  // force unwrap
  print(a!);
}
