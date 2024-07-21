import 'package:flutter/material.dart';
import 'package:world_wise/constants.dart';
import 'package:world_wise/widgets/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static const List<String> images = [
    'assets/images/Frame 1.jpg', //0
    'assets/images/Frame 10.jpg', //1
    'assets/images/Frame 9.jpg', //2
    'assets/images/Frame 8.jpg', //3
    'assets/images/Frame 7.jpg', //4
    'assets/images/Frame 6.jpg', //5
    'assets/images/Frame 5.jpg', //6
    'assets/images/Frame 2.jpg', //7
    'assets/images/Frame 4.jpg', //8
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 358,
                      height: 748,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 233,
                            child: Container(
                              width: 109,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[0]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 125,
                            top: 418,
                            child: Container(
                              width: 109,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[1]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 109,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[2]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 250,
                            top: 233,
                            child: Container(
                              width: 108,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[3]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 250,
                            top: 468,
                            child: Container(
                              width: 108,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[4]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 125,
                            top: 184,
                            child: Container(
                              width: 109,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[5]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 125,
                            top: -50,
                            child: Container(
                              width: 109,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[6]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 250,
                            top: 0,
                            child: Container(
                              width: 108,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[7]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 468,
                            child: Container(
                              width: 109,
                              height: 217,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(images[8]),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 8,
            right: 8,
            bottom: 16,
            child: Container(
              width: 358,
              padding: const EdgeInsets.only(
                top: 24,
                left: 16,
                right: 16,
                bottom: 11,
              ),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore The Beauty \nOf The World!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Enjoy and discover new places around\nthe world with us.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                      child: CoustomButton(
                        onTap:(){
                              Navigator.pushReplacementNamed(context, "Start");
                        } ,
                    text: "Get Started",
                    buttonBorderColor: primaryColor,
                    buttonColor: primaryColor,
                    textColor: backColor,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
