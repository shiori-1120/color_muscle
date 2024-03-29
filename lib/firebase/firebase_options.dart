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
    apiKey: 'AIzaSyARwSszqiwrQaIupQVNqb1Y02FajhHs00E',
    appId: '1:44602318578:web:1ea7da59bc438551b03a6b',
    messagingSenderId: '44602318578',
    projectId: 'colormuscle',
    authDomain: 'colormuscle.firebaseapp.com',
    storageBucket: 'colormuscle.appspot.com',
    measurementId: 'G-M5SRHT8HPR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc7MzswYUlr4zUwc9JNBPcQxMOCGMH_jc',
    appId: '1:44602318578:android:b29415bac97ce8d3b03a6b',
    messagingSenderId: '44602318578',
    projectId: 'colormuscle',
    storageBucket: 'colormuscle.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdb_z-DTeuSuINCbWqUPLfpxwXX27uUlM',
    appId: '1:44602318578:ios:1ba553e1e0c79266b03a6b',
    messagingSenderId: '44602318578',
    projectId: 'colormuscle',
    storageBucket: 'colormuscle.appspot.com',
    iosBundleId: 'com.potipoti.colorMuscle',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdb_z-DTeuSuINCbWqUPLfpxwXX27uUlM',
    appId: '1:44602318578:ios:5bf279bb4b6e00dab03a6b',
    messagingSenderId: '44602318578',
    projectId: 'colormuscle',
    storageBucket: 'colormuscle.appspot.com',
    iosBundleId: 'com.potipoti.colorMuscle.RunnerTests',
  );
}
