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
    apiKey: 'AIzaSyBroR2Dz7dl5RDUW00ypEw63-lpQaTxNxE',
    appId: '1:790174539090:web:ccd09ba01fe9b696b26e8b',
    messagingSenderId: '790174539090',
    projectId: 'classwork-5a92d',
    authDomain: 'classwork-5a92d.firebaseapp.com',
    storageBucket: 'classwork-5a92d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEyl869YFx0S5Jw0h-FxBXzbTPC8ZMHPs',
    appId: '1:790174539090:android:37b95d888ffe38f6b26e8b',
    messagingSenderId: '790174539090',
    projectId: 'classwork-5a92d',
    storageBucket: 'classwork-5a92d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtSxG95TsYgvvlPof6BGsHpT54pDuUVgM',
    appId: '1:790174539090:ios:3fc7063298efb8e1b26e8b',
    messagingSenderId: '790174539090',
    projectId: 'classwork-5a92d',
    storageBucket: 'classwork-5a92d.appspot.com',
    iosClientId: '790174539090-n3jdkh3tmortp3j2aalcbl7ml9ff2go0.apps.googleusercontent.com',
    iosBundleId: 'com.example.thridClasswork',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtSxG95TsYgvvlPof6BGsHpT54pDuUVgM',
    appId: '1:790174539090:ios:3fc7063298efb8e1b26e8b',
    messagingSenderId: '790174539090',
    projectId: 'classwork-5a92d',
    storageBucket: 'classwork-5a92d.appspot.com',
    iosClientId: '790174539090-n3jdkh3tmortp3j2aalcbl7ml9ff2go0.apps.googleusercontent.com',
    iosBundleId: 'com.example.thridClasswork',
  );
}
