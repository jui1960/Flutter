import 'package:class_3_validation/HomeScreen.dart';
import 'package:class_3_validation/SignIn.dart';
import 'package:class_3_validation/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:class_3_validation/SignIn.dart';
import 'package:class_3_validation/SignUp.dart';

import 'HomeScreen.dart';


void main() {
  runApp(AuthApp());
}

class AuthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Navigation',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/signin',
      routes: {
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}