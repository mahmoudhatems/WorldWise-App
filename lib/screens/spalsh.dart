import 'dart:async';

import 'package:flutter/material.dart';
import 'package:world_wise/screens/onboarding.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({super.key});

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  final splashDuration = 5;
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: splashDuration), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) =>const OnboardingPage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
          Column(
            
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                
               Container(
                    width: 164,
                    height: 164,
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sightseeing (1) 1.png"),
                        fit: BoxFit.fill,
                      ),))
            ],
          ),
        ],
      ),
    );
   
  }
}
