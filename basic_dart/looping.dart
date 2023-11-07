void main() {
  // robot ki korbe - bazar korbe
  // dine kotobar - N no

  // loop
  // shuru - thamte chan - gap (increment)
  // 0(starting) - 100(break point) - 1(increment/decrement)
  // for (start : condition: increment/decrement) {
  // code block
  // }

  int end = 20;
  String name = 'Ashik';

  // initialization; condition; increment/decrement
  for (int i = 0; i < 100; i += 1) {
    // code
    if (i >= 20 && i <= 25) {
      continue;
    }
    print('welcome $name => $i');

    if (i == 50) {
      break;
    }
  }
  print('End of loop');
  print('End of loop');
  print('End of loop');
}