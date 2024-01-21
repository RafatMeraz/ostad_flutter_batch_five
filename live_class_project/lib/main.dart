/*
1. Round tap button what adds a new glass
2. list of consume glass
3. consume- no of glass and time
4. show list
 */

// TODO : Replace list with stack

import 'package:flutter/material.dart';
import 'package:live_class_project/home_screen.dart'; // Package import
// import 'home_screen.dart'; // path import

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}


