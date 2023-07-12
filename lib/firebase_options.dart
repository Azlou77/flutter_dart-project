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
    apiKey: 'AIzaSyCNOcLBFoWYfQDLFMzcuMAo9mYw_6oFDEU',
    appId: '1:821482329687:web:9892740c2083c2745cf512',
    messagingSenderId: '821482329687',
    projectId: 'ipssi2023bd232',
    authDomain: 'ipssi2023bd232.firebaseapp.com',
    storageBucket: 'ipssi2023bd232.appspot.com',
    measurementId: 'G-W33CQNGD4H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDECQVAI7TMDL1B9Eif52-NHlZdXOfTIiU',
    appId: '1:821482329687:android:9ee25e789b99f0525cf512',
    messagingSenderId: '821482329687',
    projectId: 'ipssi2023bd232',
    storageBucket: 'ipssi2023bd232.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpZ80yi3OziATf3_XaEBulsIKraU8ldG8',
    appId: '1:821482329687:ios:2674a101dfb05c485cf512',
    messagingSenderId: '821482329687',
    projectId: 'ipssi2023bd232',
    storageBucket: 'ipssi2023bd232.appspot.com',
    iosClientId: '821482329687-all0iamgsfkcqve7qbi15em2rlsiqt89.apps.googleusercontent.com',
    iosBundleId: 'com.example.ipssiBd232',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpZ80yi3OziATf3_XaEBulsIKraU8ldG8',
    appId: '1:821482329687:ios:2674a101dfb05c485cf512',
    messagingSenderId: '821482329687',
    projectId: 'ipssi2023bd232',
    storageBucket: 'ipssi2023bd232.appspot.com',
    iosClientId: '821482329687-all0iamgsfkcqve7qbi15em2rlsiqt89.apps.googleusercontent.com',
    iosBundleId: 'com.example.ipssiBd232',
  );
}
