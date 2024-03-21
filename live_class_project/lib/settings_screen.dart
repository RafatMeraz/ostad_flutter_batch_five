import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_controller.dart';
import 'package:live_class_project/profile_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${_counterController.counter}')),
            ElevatedButton(
              onPressed: () {
                // REPLACE
                Get.off(() => const ProfileScreen());
              },
              child: const Text('Go to Profile'),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                  // Navigator.pop(context);
                },
                child: const Text('Back')),
            ElevatedButton(
              onPressed: () {
                _counterController.increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
