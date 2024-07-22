import 'package:flutter/material.dart';
import 'package:world_wise/screens/forgot_password.dart';
import 'package:world_wise/screens/home.dart';
import 'package:world_wise/screens/login.dart';
import 'package:world_wise/screens/reset_password.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        "Splash":(context)=>const Spalsh(),
        "OnboardingPage":(context)=> const OnboardingPage(),
        "Start":(context)=>const Start(),
        "VerifyEmail":(context)=>const VerifyEmail(),
        "ForgotPassword":(context)=>const ForgotPassword(),
        "Signup":(context)=>const Signup(),
        "Login":(context)=>const Login(),
        "HomeScreen":(context)=>const HomeScreen(),
        "ResetPassword":(context)=>const ResetPassword()
      },
      home: const Spalsh()
      
    );
}
}