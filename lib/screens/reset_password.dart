import 'package:flutter/material.dart';
import 'package:world_wise/constants.dart';
import 'package:world_wise/widgets/Coustom_password_text.dart';
import 'package:world_wise/widgets/custom_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
        title: const Text("Reset Password",
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
                    child: Text(
                        "your new password must be different \n           from previous password.",
                        style: TextStyle(
                          color: deviderColor,
                          fontSize: 14,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Reset password-cuate (1) 1.png",
                    height: 290,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text("New Password",
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
            CustomPassTextField(
              mycontroller: TextEditingController(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Confirm Password",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            ),
            CustomPassTextField(
              mycontroller: TextEditingController(),
            ),
            const SizedBox(
              height: 15,
            ),
            CoustomButton(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "Login");
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
