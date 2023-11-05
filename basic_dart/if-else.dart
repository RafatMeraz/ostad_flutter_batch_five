void main() {
  int time = 3;
  // jodi time 10 , then tunnel open kore dibo
  if (time >= 6 && time <= 10 && time != 9) {
    print('Open tunnel 1');
  } else if (time == 11 || time == 3) {
    print('Open tunnel 2');
  } else if (time == 12) {
    print('Open tunnel 3');
  } else {
    print('warning dibo');
  }

  print('I will go home');
}
