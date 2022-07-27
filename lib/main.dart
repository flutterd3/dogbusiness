import 'dart:math';

import 'package:dogbusiness/screens/login_screen.dart';
import 'package:dogbusiness/utility/color_themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC3bBBOZBxR8zWNjpfWIrtuGc6OjhWls4k",
            authDomain: "dogbusiness-eaec8.firebaseapp.com",
            projectId: "dogbusiness-eaec8",
            storageBucket: "dogbusiness-eaec8.appspot.com",
            messagingSenderId: "912010379300",
            appId: "1:912010379300:web:4b2f1a65c999d21224d8b1"));
  } else {
    await Firebase.initializeApp();
    runApp(const MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
