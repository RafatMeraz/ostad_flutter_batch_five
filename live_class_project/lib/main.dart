import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:live_class_project/firebase_messaging.dart';

import 'firebase_options.dart';
import 'ongoing_matches_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseMessagingService.initialize();
  print(await FirebaseMessagingService.getFCMToken());
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OngoingMatchesScreen(),
    );
  }
}