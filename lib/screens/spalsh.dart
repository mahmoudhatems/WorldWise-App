import 'package:flutter/material.dart';

class Spalsh extends StatelessWidget {
  const Spalsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Container(
          width: 390,
          height: 844,
          padding: const EdgeInsets.symmetric(horizontal: 114),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),)
          
        ],
      ),
    );
   
  }
}
