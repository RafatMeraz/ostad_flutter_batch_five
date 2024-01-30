import 'package:flutter/material.dart';
import 'package:live_class_project/product_list_screen.dart';

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )
          ),
        )
      ),
      home: const ProductListScreen(),
    );
  }
}
