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
    apiKey: 'AIzaSyCbbksdPAGofY4v6Wu1oF4hxZKWgJ8iPCc',
    appId: '1:461206504613:web:a8e0bc7a81e3419a8fb94c',
    messagingSenderId: '461206504613',
    projectId: 'photoscent-4484e',
    authDomain: 'photoscent-4484e.firebaseapp.com',
    storageBucket: 'photoscent-4484e.appspot.com',
    measurementId: 'G-FZ1LSPVKPC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-MUd0LwVNgWXlMdAAoluIrgCo9-LoU18',
    appId: '1:461206504613:android:ef6cf767eb61be7c8fb94c',
    messagingSenderId: '461206504613',
    projectId: 'photoscent-4484e',
    storageBucket: 'photoscent-4484e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyARmmpi53AlaNW_7GUp8hGi5hSLPxIDxLY',
    appId: '1:461206504613:ios:fe1bbc2dcb6d21f58fb94c',
    messagingSenderId: '461206504613',
    projectId: 'photoscent-4484e',
    storageBucket: 'photoscent-4484e.appspot.com',
    iosClientId: '461206504613-100hkhvcrif0tdgntn3ng21c570kseep.apps.googleusercontent.com',
    iosBundleId: 'com.example.photoscent',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyARmmpi53AlaNW_7GUp8hGi5hSLPxIDxLY',
    appId: '1:461206504613:ios:fe1bbc2dcb6d21f58fb94c',
    messagingSenderId: '461206504613',
    projectId: 'photoscent-4484e',
    storageBucket: 'photoscent-4484e.appspot.com',
    iosClientId: '461206504613-100hkhvcrif0tdgntn3ng21c570kseep.apps.googleusercontent.com',
    iosBundleId: 'com.example.photoscent',
  );
}