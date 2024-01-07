import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

/// Device Preview
/// BuildContext
/// Package intro (Package vs. Plugin)
/// Stack

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) {
      return const MyApp();
    }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                width: 30,
                height: 30,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
