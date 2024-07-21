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
                      width: 110,
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
                          height: 165,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/sightseeing.png",
                                height: 162,
                                width: 162,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WorldWise\nHomePage ',
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
               
            ],
          )
        ],
      ),
    );
  }
}
