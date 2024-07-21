import 'package:flutter/material.dart';
import 'package:world_wise/constants.dart';
import 'package:world_wise/widgets/coustom_text_field.dart';
import 'package:world_wise/widgets/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
              size: 20,
            )),
        title: const Text("Forgot Password",
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
              padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text("please enter your email address \n   to receive a verification code. ",
                        style: TextStyle(
                            color: deviderColor,
                            fontSize: 14,
                            )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Forgot password-cuate (2) 1.png",height:230 ,),
                   const SizedBox(
              height: 30,
            ),
                  const Row(
                    children: [
                      Text("Email",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              ))
                    ],
                  ),
                ],
              ),
            ),
            CustomTextField(
              mycontroller: TextEditingController(),
            ),
            const SizedBox(
              height: 25,
            ),
            CoustomButton(
                onTap: () {
                  Navigator.pushNamed(context, "VerifyEmail");
                },
                text: "Send",
                textColor: backColor,
                buttonBorderColor: primaryColor,
                buttonColor: primaryColor,
                fontFamily: 'Noto Sans Arabic'),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
