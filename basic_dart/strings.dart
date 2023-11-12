void main() {
  String userName = 'Rahim';
  userName = "Karim";
  userName = '''Ovi''';
  print(userName);
  String address = 'Mirpur, \' Dhaka';
  int age = 25;

  String fullDetails = userName + ' - ' + address; // concat
  print(fullDetails);

  String userDetails = userName + ' ' + age.toString();
  print(userDetails);

  String userDetailsSecondary =
      'User name is' + userName + ' and ' + age.toString() + ' is age';
  userDetailsSecondary = 'User name is $userName and Age is $age'; // String interpolation
  print(userDetailsSecondary);
  print(userDetailsSecondary.length);

  print(userDetails.length);
  print(userDetails.contains('25'));
  print(userDetails.endsWith('25'));
  print(userDetails.startsWith('25'));
  print(userDetails.toLowerCase());
  print(userDetails.toUpperCase());
  print(userDetails[0]);
  print(userDetails[1]);
  double pi = 3.141638748374;
  print(pi.toStringAsFixed(2));
  print(pi);
}