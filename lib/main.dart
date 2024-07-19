import 'package:flutter/material.dart';
import 'package:world_wise/screens/login.dart';
import 'package:world_wise/screens/signup.dart';
import 'package:world_wise/screens/spalsh.dart';
import 'package:world_wise/screens/start.dart';
import 'package:world_wise/screens/verify_email.dart';

import 'screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Splash":(context)=>Spalsh(),
        "OnboardingPage":(context)=>OnboardingPage(),
        "Start":(context)=>Start(),
        "VerifyEmail":(context)=>VerifyEmail(),
        
        "Signup":(context)=>Signup(),
        "Login":(context)=>Login()
      },
      initialRoute: "Signup"
      
    );
}
}