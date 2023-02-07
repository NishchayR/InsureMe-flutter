import 'package:flutter/material.dart';
import 'package:insureme/pages/home.dart';
import 'package:insureme/pages/login.dart';
import 'package:insureme/pages/signup.dart';

void main()=>runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => const Home(),
    '/login': (context) => const Login(),
    '/signup': (context) => const Signup(),
  },
));
