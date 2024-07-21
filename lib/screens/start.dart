import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 844,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: -51,
                  top: -62,
                  child: Container(
                    width: 141,
                    height: 141,
                    decoration: const ShapeDecoration(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlutterLogo(size: 20),
                        const SizedBox(width: 4),
                        FlutterLogo(size: 16),
                        const SizedBox(width: 4),
                        FlutterLogo(size: 25),
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
                    decoration: const ShapeDecoration(
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
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF144CF5),
                            minimumSize: const Size(double.infinity, 53),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: const Color(0xFF144CF5),
                            side: const BorderSide(color: Color(0xFF144CF5), width: 1),
                            minimumSize: const Size(double.infinity, 53),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
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
                  child: Column(
                    children: [
                      Container(
                        width: 162,
                        height: 162,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/162x162"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'WorldWise',
                        style: TextStyle(
                          color: Color(0xFF144CF5),
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
          ),
        ],
      ),
    );
  }
}
