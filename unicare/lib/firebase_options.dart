// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD248D6AYtW8Iw_FYFUBfkktuqZJ7JvcvA',
    appId: '1:603017674339:web:7fdd96e1125a21afd44256',
    messagingSenderId: '603017674339',
    projectId: 'ucare-a68cc',
    authDomain: 'ucare-a68cc.firebaseapp.com',
    databaseURL: 'https://ucare-a68cc-default-rtdb.firebaseio.com',
    storageBucket: 'ucare-a68cc.appspot.com',
    measurementId: 'G-HCF32T65QD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCStTaLEUd8cYoyPtTiM3gbNQME5KACZkw',
    appId: '1:603017674339:android:63523c98b4c47ad7d44256',
    messagingSenderId: '603017674339',
    projectId: 'ucare-a68cc',
    databaseURL: 'https://ucare-a68cc-default-rtdb.firebaseio.com',
    storageBucket: 'ucare-a68cc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0LorIO_gNxygwGTBMl6ksILbNXPMfClc',
    appId: '1:603017674339:ios:46a11e0d8c89f417d44256',
    messagingSenderId: '603017674339',
    projectId: 'ucare-a68cc',
    databaseURL: 'https://ucare-a68cc-default-rtdb.firebaseio.com',
    storageBucket: 'ucare-a68cc.appspot.com',
    androidClientId: '603017674339-0p4k3pkgg3fbjgebqfkkhgh8126ade24.apps.googleusercontent.com',
    iosClientId: '603017674339-jg2oiprbt6dso5g6pfunm6qf9ukqf61e.apps.googleusercontent.com',
    iosBundleId: 'com.unicare.ios',
  );
}
