import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:world_wise/constants.dart';
import 'package:world_wise/widgets/custom_button.dart';

class VerifyEmail extends StatefulWidget {
   VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  int seconds=59;
  late Timer _timer;
  final defualtPinTheme = PinTheme(
      width: 54,
      height: 54,
      textStyle: const TextStyle(fontSize: 16, color: textColor),
      decoration: BoxDecoration(
          color: const Color(0xffFEF7FF),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26, // Shadow color
              blurRadius: 4, // Shadow blur radius
              offset: Offset(
                0,
                4,
              ),

              // Shadow offset
            ),
            BoxShadow(
              color: Colors.black26, // Shadow color
              blurRadius: 0, // Shadow blur radius
              offset: Offset(
                0,
                0,
              ),

              // Shadow offset
            ),
          ],
          border: Border.all(color: Colors.transparent)));

  @override
   @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  void resetTimer() {
    setState(() {
      seconds = 59;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: arrowBackColor,
               size: 20
            )),
        title: const Text("Verify Email",
            style: TextStyle(
                color: textColor,
                fontSize: 28,
                fontWeight: FontWeight.w500,
               )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
        child: ListView(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("please enter the 5 digit code sent \n                   to your email.",
                        style: TextStyle(
                            color: deviderColor,
                            fontSize: 14,
                           )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Authentication-cuate 1.png",height: 292,),
                ],
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Expanded(
                child: Pinput(
                  length: 5,
                  autofocus: true,
                  defaultPinTheme: defualtPinTheme,
                  focusedPinTheme: defualtPinTheme.copyWith(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: primaryColor, // Shadow color
                              blurRadius: 3,
                              spreadRadius: 2,
                              // Shadow blur radius
                              offset: Offset(
                                0,
                                4,
                              ),
                              blurStyle: BlurStyle.outer
    
                              // Shadow offset
                              ),
                        ]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CoustomButton(
                onTap: () {
                  Navigator.pushNamed(context, "ResetPassword");
                },
                text: "Submit",
                textColor: backColor,
                buttonBorderColor: primaryColor,
                buttonColor: primaryColor,
                ),
            const SizedBox(
              height: 20,
            ),
              Center(
              child: seconds > 0
                  ? Text(
                      "Resend code in 00:${seconds.toString().padLeft(2, '0')}",
                      style: const TextStyle(color: textColor, fontSize: 14),
                    )
                  : TextButton(
                      onPressed: resetTimer,
                      child: const Text(
                        "Resend code",
                        style: TextStyle(color: textColor, fontSize: 14),
                      ),
                    ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}