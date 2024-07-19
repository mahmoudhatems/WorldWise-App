import 'package:flutter/material.dart';
import 'package:world_wise/constants.dart';


class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key, this.hintText, required this.mycontroller});
final String? hintText;

final TextEditingController mycontroller;
  @override
  Widget build(BuildContext context) {
    return TextField(
    
      controller: mycontroller,
          decoration: InputDecoration(
            hintText:hintText ,
            hintStyle: const TextStyle(
              color:  hintTextColor
            ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color:borderColor)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color:borderColor))),
        );
  }
}