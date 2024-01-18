/*
1. Input two number
2. Input should be numbers only
3. Add button, Subs Button
4. Clear button
5. Result should be shown in text
 */

import 'package:flutter/material.dart';
import 'package:live_class_project/home_screen.dart'; // Package import
// import 'home_screen.dart'; // path import

void main() {
  runApp(const SumApp());
}

class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

