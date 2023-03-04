import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insureme/pages/cost.dart';
import 'package:insureme/pages/home.dart';
import 'package:insureme/pages/login.dart';
import 'package:insureme/pages/signup.dart';
import 'package:insureme/pages/predict.dart';
import 'package:insureme/pages/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyAqyP0fbCB2uyyhHVzw6VjGayApo48PYZY", appId: "1:481241273005:android:891a6f0b821a5ccacd2c24", messagingSenderId: "481241273005", projectId: "insureme-login"));
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Home(),
      '/login': (context) => const Login(),
      '/signup': (context) => const Signup(),
      '/predict': (context) => const Predict(),
      '/cost': (context) => const Cost(),
    },
  ));
}
