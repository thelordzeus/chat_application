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
    apiKey: 'AIzaSyBakeyLCt80IFG6QF3EC81dfiKZO_AE2Yk',
    appId: '1:680209913954:web:3ddd10c849e5dbf2dc593b',
    messagingSenderId: '680209913954',
    projectId: 'chatapp-dacf1',
    authDomain: 'chatapp-dacf1.firebaseapp.com',
    storageBucket: 'chatapp-dacf1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXXZ_DMOAdpwHvqvubZjCeWkGCrPbkDXg',
    appId: '1:680209913954:android:dbaf4a12f6b16913dc593b',
    messagingSenderId: '680209913954',
    projectId: 'chatapp-dacf1',
    storageBucket: 'chatapp-dacf1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBok4gV-h6LgkE5JuLZCwu0YmnlXFEKYdA',
    appId: '1:680209913954:ios:cd1f9d818ad65335dc593b',
    messagingSenderId: '680209913954',
    projectId: 'chatapp-dacf1',
    storageBucket: 'chatapp-dacf1.appspot.com',
    iosBundleId: 'com.example.chatApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBok4gV-h6LgkE5JuLZCwu0YmnlXFEKYdA',
    appId: '1:680209913954:ios:cd1f9d818ad65335dc593b',
    messagingSenderId: '680209913954',
    projectId: 'chatapp-dacf1',
    storageBucket: 'chatapp-dacf1.appspot.com',
    iosBundleId: 'com.example.chatApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBakeyLCt80IFG6QF3EC81dfiKZO_AE2Yk',
    appId: '1:680209913954:web:20f4651ef528d610dc593b',
    messagingSenderId: '680209913954',
    projectId: 'chatapp-dacf1',
    authDomain: 'chatapp-dacf1.firebaseapp.com',
    storageBucket: 'chatapp-dacf1.appspot.com',
  );
}
