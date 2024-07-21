import 'package:flutter/material.dart';
import 'package:world_wise/constants.dart';
import 'package:world_wise/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/Ellipse 5.png",
                    height: 80,
                  ),
                ],
              ),
              Stack(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    SizedBox(
                      height: 550,
                      width: 115,
                      child: Image.asset(
                        "assets/images/Ellipse 6.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ]),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 140,
                        ),
                        SizedBox(
                          height: 168,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/sightseeing.png",
                                height: 164,
                                width: 164,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WorldWise',
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 32,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 12,right: 12,bottom: 8),
                child: CoustomButton(
                    text: "Login",
                    buttonBorderColor: borderColor,
                    buttonColor: primaryColor,
                    textColor: secoundryColor),
              ),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: CoustomButton(
                    text: "Login",
                    buttonBorderColor: primaryColor,
                    buttonColor: secoundryColor,
                    textColor: primaryColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
