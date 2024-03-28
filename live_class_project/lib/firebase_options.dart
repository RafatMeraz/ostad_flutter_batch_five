// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDbxN1HthBRli8vEb7SpRAsktkf1Gvqzio',
    appId: '1:1072979298272:web:864fdb665ace65b3df8d85',
    messagingSenderId: '1072979298272',
    projectId: 'flutter-batch-one',
    authDomain: 'flutter-batch-one.firebaseapp.com',
    databaseURL: 'https://flutter-batch-one-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-batch-one.appspot.com',
    measurementId: 'G-3F9JHEFDR8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlu2aIJJjvUOuYHZL-g_p-lVgfj011jO8',
    appId: '1:1072979298272:android:7cd0f13aacba04bcdf8d85',
    messagingSenderId: '1072979298272',
    projectId: 'flutter-batch-one',
    databaseURL: 'https://flutter-batch-one-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-batch-one.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8MT1A6Asuf5t9lKuwDrF905CNiLNOCHM',
    appId: '1:1072979298272:ios:620a417ddeebef33df8d85',
    messagingSenderId: '1072979298272',
    projectId: 'flutter-batch-one',
    databaseURL: 'https://flutter-batch-one-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-batch-one.appspot.com',
    iosBundleId: 'com.ostad.liveClassProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8MT1A6Asuf5t9lKuwDrF905CNiLNOCHM',
    appId: '1:1072979298272:ios:f5cfecc1ec9e74c6df8d85',
    messagingSenderId: '1072979298272',
    projectId: 'flutter-batch-one',
    databaseURL: 'https://flutter-batch-one-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-batch-one.appspot.com',
    iosBundleId: 'com.ostad.liveClassProject.RunnerTests',
  );
}
