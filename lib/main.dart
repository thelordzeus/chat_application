import 'package:chat_application/services/auth/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:chat_application/firebase_options.dart';
import 'package:chat_application/themes/light_mode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the .env file
  try {
    await dotenv.load(fileName: ".env");
    print('Loaded .env file successfully');
  } catch (e) {
    print('Error loading .env file: $e');
  }

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const AuthGate(),
    );
  }
}
