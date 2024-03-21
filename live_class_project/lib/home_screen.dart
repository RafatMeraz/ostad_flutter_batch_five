import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_class_project/counter_controller.dart';
import 'package:live_class_project/profile_screen.dart';
import 'package:live_class_project/settings_screen.dart';

// PUB-SUB pattern

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //       () => Text(
            //     '${_counterController.counter}',
            //     style: const TextStyle(
            //       fontSize: 24,
            //       fontWeight: FontWeight.w700,
            //     ),
            //   ),
            // ),
            GetBuilder<CounterController>(
              builder: (counterController) {
                return Text(
                  '${counterController.counter}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                );
              }
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ProfileScreen()));
                // Get.to(ProfileScreen());
                Get.to(() => const ProfileScreen());
              },
              child: const Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                // PUSH
                Get.to(() => const SettingsScreen());
              },
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
