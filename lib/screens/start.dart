import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -51,
                top: -62,
                child: Container(
                  width: 141,
                  height: 141,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDCE3F9),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 16,
                child: Container(
                  width: 358,
                  height: 21,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 289,
                        top: 1,
                        child: Container(
                          width: 69,
                          height: 14,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 20,
                                        height: 14,
                                        child: FlutterLogo(),
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        width: 16,
                                        height: 14,
                                        child: FlutterLogo(),
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        width: 25,
                                        height: 14,
                                        child: FlutterLogo(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -12,
                        top: 0,
                        child: Container(
                          width: 54,
                          height: 21,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 11,
                                top: 3,
                                child: Container(
                                  width: 33,
                                  height: 15,
                                  child: FlutterLogo(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 285,
                top: 136,
                child: Container(
                  width: 599,
                  height: 599,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDBE2F8),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 682,
                child: Container(
                  width: 358,
                  height: 122,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 358,
                          height: 53,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFF144CF5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 155,
                                top: 15,
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 69,
                        child: Container(
                          width: 358,
                          height: 53,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFF144CF5)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 155,
                                top: 15,
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 148,
                                top: 15,
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Color(0xFF144CF5),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 107,
                top: 254,
                child: Container(
                  width: 176,
                  height: 214,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 7,
                        top: 0,
                        child: Container(
                          width: 162,
                          height: 162,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/162x162"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 166,
                        child: Text(
                          'WorldWise',
                          style: TextStyle(
                            color: Color(0xFF144CF5),
                            fontSize: 32,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
