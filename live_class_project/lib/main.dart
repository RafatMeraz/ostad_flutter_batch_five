import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'ongoing_matches_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

// TODO: 1. set up firebase storage
// TODO: 2. pick new image/videos from gallery and put into firebase storage
// TODO: 3. show list of images from storage in gridview