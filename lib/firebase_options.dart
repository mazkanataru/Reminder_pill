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
    apiKey: 'AIzaSyDMoekLQh_K9Y_vDbMc3B2W5ePBu6kxe6M',
    appId: '1:249716587754:web:1c4f69a4d6d8bf0c37eb93',
    messagingSenderId: '249716587754',
    projectId: 'health-7d110',
    authDomain: 'health-7d110.firebaseapp.com',
    storageBucket: 'health-7d110.appspot.com',
    measurementId: 'G-MGVDGH0Q4D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeUFxJ72B3rbosgpU6n3dHNC-OXD2853E',
    appId: '1:249716587754:android:3de77c0d3cd1083937eb93',
    messagingSenderId: '249716587754',
    projectId: 'health-7d110',
    storageBucket: 'health-7d110.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC56Z6HY2Glr4hekzibMdmLOsbpfj-2Nmg',
    appId: '1:249716587754:ios:069db37c12a828ba37eb93',
    messagingSenderId: '249716587754',
    projectId: 'health-7d110',
    storageBucket: 'health-7d110.appspot.com',
    iosBundleId: 'com.example.health',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC56Z6HY2Glr4hekzibMdmLOsbpfj-2Nmg',
    appId: '1:249716587754:ios:069db37c12a828ba37eb93',
    messagingSenderId: '249716587754',
    projectId: 'health-7d110',
    storageBucket: 'health-7d110.appspot.com',
    iosBundleId: 'com.example.health',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDMoekLQh_K9Y_vDbMc3B2W5ePBu6kxe6M',
    appId: '1:249716587754:web:5f96fed20247156737eb93',
    messagingSenderId: '249716587754',
    projectId: 'health-7d110',
    authDomain: 'health-7d110.firebaseapp.com',
    storageBucket: 'health-7d110.appspot.com',
    measurementId: 'G-5B3EX99VYZ',
  );

}