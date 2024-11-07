// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBPfWbZQRT7-e7xlmH_k14YJMhGfJCglI4',
    appId: '1:321597286428:web:1f85082aa75752f60cd7d9',
    messagingSenderId: '321597286428',
    projectId: 'authfire-8aa70',
    authDomain: 'authfire-8aa70.firebaseapp.com',
    storageBucket: 'authfire-8aa70.firebasestorage.app',
    measurementId: 'G-CQNSCSP8CP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0XrPe8EZH1IHnb4dd8yjlcP51UHO_s78',
    appId: '1:321597286428:android:1ca0bfd0531fd38b0cd7d9',
    messagingSenderId: '321597286428',
    projectId: 'authfire-8aa70',
    storageBucket: 'authfire-8aa70.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDasQJdFx1Cs3K269ul80DXWC8NtnG-Uq0',
    appId: '1:321597286428:ios:37748d115a7b7b450cd7d9',
    messagingSenderId: '321597286428',
    projectId: 'authfire-8aa70',
    storageBucket: 'authfire-8aa70.firebasestorage.app',
    iosBundleId: 'com.example.flutterIrctcCloneApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDasQJdFx1Cs3K269ul80DXWC8NtnG-Uq0',
    appId: '1:321597286428:ios:37748d115a7b7b450cd7d9',
    messagingSenderId: '321597286428',
    projectId: 'authfire-8aa70',
    storageBucket: 'authfire-8aa70.firebasestorage.app',
    iosBundleId: 'com.example.flutterIrctcCloneApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBPfWbZQRT7-e7xlmH_k14YJMhGfJCglI4',
    appId: '1:321597286428:web:57173b7edf0cecab0cd7d9',
    messagingSenderId: '321597286428',
    projectId: 'authfire-8aa70',
    authDomain: 'authfire-8aa70.firebaseapp.com',
    storageBucket: 'authfire-8aa70.firebasestorage.app',
    measurementId: 'G-Q2YT7EWZNK',
  );
}