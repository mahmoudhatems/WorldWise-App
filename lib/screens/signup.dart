import 'package:flutter/material.dart';
import 'package:world_wise/constants.dart';
import 'package:world_wise/widgets/Coustom_password_text.dart';
import 'package:world_wise/widgets/coustom_text_field.dart';
import 'package:world_wise/widgets/custom_button.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      top: 10.0, left: 10, right: 10, bottom: 10),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text("Name",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                           
                          ))
                    ],
                  ),
                ),
                CustomTextField(
                  mycontroller: TextEditingController(),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text("Email",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                          
                          ))
                    ],
                  ),
                ),
                CustomTextField(
                  mycontroller: TextEditingController(),
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text("Password",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16
                            
                          ))
                    ],
                  ),
                ),
                CustomPassTextField(
                  mycontroller: TextEditingController(),
                ),
               
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text("Confirm Password",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            
                          ))
                    ],
                  ),
                ),
                CustomPassTextField(
                  mycontroller: TextEditingController(),
                ),
                const Padding(
                  padding: EdgeInsets.all(12)),
                CoustomButton(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "Login");
                  },
                  text: "Sign UP",
                  textColor: backColor,
                  buttonBorderColor: primaryColor,
                  buttonColor: primaryColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: deviderColor,
                      thickness: 1,
                      height: 1,
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Or sign up with",
                        style: TextStyle(
                          color: deviderColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: deviderColor,
                      thickness: 1,
                      height: 1,
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
              children: [
                SizedBox(width: 20,),
                Container( 
                  height: 56,width: 56,
                  
                  child: Image.asset("assets/images/google.png",),
            
                ),
                 Container( 
                  height: 56,width: 56,
                  
                  child: Image.asset("assets/images/apple.png",),
            
                ),
                 Container( 
                  height: 56,width: 56,
                  
                  child: Image.asset("assets/images/facebook.png",),
            
                ), SizedBox(width: 20,),
              ],
            ),

                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "LoginPage");
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
