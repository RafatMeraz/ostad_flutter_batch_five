void main() {
  int n = 34;
  double c = 34.45;
  String u = 'username';
  bool isSingle = false;

  var h = 34;
  var j = 'rafi';
  var k = 34.5;
  var sf = '34';

  String university = 'UAP';
  String uni = 'university of dhaka';

  print(uni);

  String university1 = 'skfjkd';
  String university2 = 'do;skf;ldkd';
  String university3 = 'DU';
  String buet = 'RUET';

// last element = (total)n-1
  List<String> universities = ['BUET', 'DU', 'BRAC', 'NSU', 'UAP', 'UIU'];
  print(universities[5]);
  print(universities.first);
  print(universities.last);
  print(universities.length);
  print(universities.isEmpty);
  print(universities.isNotEmpty);
  print(universities.elementAt(2));
  // print(universities.elementAt(10));

  print(universities);

  Map<int, String> students = {
    5: 'Uzzal',
    1: 'Rafi',
    2: 'Shafir',
    3: 'Siam',
    232434: 'sdfdf',
  };

  print(students[5]);
  print(students[2]);
  print(students.length);
  print(students.isEmpty);
  print(students.isNotEmpty);
  print(students.keys);
  print(students.values);
  print(students.entries);

  Map<int, Map<String, String>> studentHistory = {
    1: {
      'name': 'Siam',
      'fatherName': 'skdfjd',
      'mothersName': 'skdfjd',
    },
    2: {
      'name': 'Satil',
      'fatherName': 'skdfjd',
      'mothersName': 'skdfjd',
    },
  };
  print(studentHistory[2]);
}
