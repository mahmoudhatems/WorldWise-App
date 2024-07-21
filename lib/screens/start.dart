import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:world_wise/constants.dart';
import 'package:world_wise/widgets/custom_button.dart';
class Start extends StatelessWidget {
  const Start({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                
                
              
                children:[Stack(
                  children: [
                    Positioned(
                      left: -51,
                      top: -62,
                      child: Container(
                        width: 141,
                        height: 141,
                        decoration: const ShapeDecoration(
                          color: ellipseColor,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 285,
                      top: 127,
                      child: Container(
                        width: 599,
                        height: 599,
                        decoration: const ShapeDecoration(
                          color: ellipseColor,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 107,
                      top: 254,
                      child: Column(
                        children: [
                          Container(
                            width: 162,
                            height: 162,
                            decoration:  BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/images/sightseeing.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'WorldWise',
                            style: TextStyle(
                              color:primaryColor,
                              fontSize: 32,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
           CoustomButton(
                  text: "Log In",
                  textColor: secoundryColor,
                  buttonBorderColor: secoundryColor,
                  buttonColor: primaryColor,
                ),
                SizedBox(height: 15),
                CoustomButton(
                  text: "Sign Up",
                  textColor: primaryColor,
                  buttonBorderColor: primaryColor,
                  buttonColor: secoundryColor,
                ), ] ),
              
            ),
            SizedBox(height: 20), // Add some space between the sections
          
          ],
        ),
      ),
    );
  }
}
