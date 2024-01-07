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
    apiKey: 'AIzaSyCWIZbTmFpG8n-1AIpf6KleMWJ6QDl-A2Q',
    appId: '1:133532897849:web:5f1eea7922f900f3a533e8',
    messagingSenderId: '133532897849',
    projectId: 'deshecommerceapp',
    authDomain: 'deshecommerceapp.firebaseapp.com',
    storageBucket: 'deshecommerceapp.appspot.com',
    measurementId: 'G-KFVWTFYQ21',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQQST332xvWhkP1h25_-39qZ7QOkwdsmQ',
    appId: '1:133532897849:android:03d2f5d2d793d958a533e8',
    messagingSenderId: '133532897849',
    projectId: 'deshecommerceapp',
    storageBucket: 'deshecommerceapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFVUW68iQ9s9TzJRSgKwgxYxbnA9kt81A',
    appId: '1:133532897849:ios:45f05dd1adcc762ca533e8',
    messagingSenderId: '133532897849',
    projectId: 'deshecommerceapp',
    storageBucket: 'deshecommerceapp.appspot.com',
    androidClientId: '133532897849-2nj1h05o91cv8u3vjddddjkfuho0trs2.apps.googleusercontent.com',
    iosClientId: '133532897849-hgd7npjejsn08537okg921cejcq32cs7.apps.googleusercontent.com',
    iosBundleId: 'com.example.deshEApp',
  );
}
