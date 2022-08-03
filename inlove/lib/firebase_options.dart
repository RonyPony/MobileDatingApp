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
    apiKey: 'AIzaSyCAikPwdweLWUZdgrD1vkUUK4fDR6G1dzA',
    appId: '1:721194391218:web:cb9e1ad05f3c61d45edbab',
    messagingSenderId: '721194391218',
    projectId: 'inlove-r',
    authDomain: 'inlove-r.firebaseapp.com',
    storageBucket: 'inlove-r.appspot.com',
    measurementId: 'G-ZB4LTCVF0D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDGqYG_LofwbQWpGqe9EncUPUd1eYIBU8',
    appId: '1:721194391218:android:4cdabc187b0164835edbab',
    messagingSenderId: '721194391218',
    projectId: 'inlove-r',
    storageBucket: 'inlove-r.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAW1D06qvW7e_HBdNGzDYuLbpY3CBj67Ug',
    appId: '1:721194391218:ios:02abc9a9cfa7be005edbab',
    messagingSenderId: '721194391218',
    projectId: 'inlove-r',
    storageBucket: 'inlove-r.appspot.com',
    iosClientId: '721194391218-o2cm2tp1grk80c2qihprva6qdtbamias.apps.googleusercontent.com',
    iosBundleId: 'com.ronytuquizz.inlove',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAW1D06qvW7e_HBdNGzDYuLbpY3CBj67Ug',
    appId: '1:721194391218:ios:02abc9a9cfa7be005edbab',
    messagingSenderId: '721194391218',
    projectId: 'inlove-r',
    storageBucket: 'inlove-r.appspot.com',
    iosClientId: '721194391218-o2cm2tp1grk80c2qihprva6qdtbamias.apps.googleusercontent.com',
    iosBundleId: 'com.ronytuquizz.inlove',
  );
}