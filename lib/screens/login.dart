import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:world_wise/widgets/Coustom_password_text.dart';
import 'package:world_wise/widgets/coustom_text_field.dart';
import 'package:world_wise/widgets/custom_button.dart';
import '../constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Log In",
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
                 Row(mainAxisAlignment:MainAxisAlignment.center ,
                   children: [
                     Image.asset("assets/images/Mobile login-cuate 1.png",height: 167,width: 167,)
                   ],
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
                Padding(
                  padding:  EdgeInsets.only(top: 8,bottom: 8),
                  child: Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(onTap: (){
                        Navigator.pushNamed(context, "ForgotPassword");
                      },
                        child: Text("Forgot Password? ",style: TextStyle(color:primaryColor,fontSize: 14 ),))
                    ],
                  ),
                ),
               
                
                const Padding(
                  padding: EdgeInsets.all(10)),
                CoustomButton(
                  onTap: () {
                   Navigator.pushReplacementNamed(context, "HomeScreen");
                  },
                  text: "Log In",
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
                        "Or Log in with",
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
                const SizedBox(
                  height: 20,
                ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
              children: [
                const SizedBox(width: 20,),
                SizedBox( 
                  height: 56,width: 56,
                  
                  child: Image.asset("assets/images/google.png",),
            
                ),
                 SizedBox( 
                  height: 56,width: 56,
                  
                  child: Image.asset("assets/images/apple.png",),
            
                ),
                 SizedBox( 
                  height: 56,width: 56,
                  
                  child: Image.asset("assets/images/facebook.png",),
            
                ), const SizedBox(width: 20,),
              ],
            ),

                const SizedBox(
                  height: 25,
                ),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}