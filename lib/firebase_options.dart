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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBt4p_P1eWqpuP2kRbY8lsLKQi1pUP1mbQ',
    appId: '1:584620040270:web:b08a97df0c1f8166e0e31f',
    messagingSenderId: '584620040270',
    projectId: 'album-shelf-ebe19',
    authDomain: 'album-shelf-ebe19.firebaseapp.com',
    storageBucket: 'album-shelf-ebe19.appspot.com',
    measurementId: 'G-8EE1G3JKVL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1txste_EbjhYAHsOwgMIL3SJiUbSQFq8',
    appId: '1:584620040270:android:59df053227ab4144e0e31f',
    messagingSenderId: '584620040270',
    projectId: 'album-shelf-ebe19',
    storageBucket: 'album-shelf-ebe19.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCU87Z0zIpZJ1-1QTkG1GCl1w7fvBqbP1s',
    appId: '1:584620040270:ios:c128708f6e215f50e0e31f',
    messagingSenderId: '584620040270',
    projectId: 'album-shelf-ebe19',
    storageBucket: 'album-shelf-ebe19.appspot.com',
    iosClientId: '584620040270-0cipgq2gsrh8qfiv3m34mvth8o70dvp9.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutter3FirebaseFirestore',
  );
}
