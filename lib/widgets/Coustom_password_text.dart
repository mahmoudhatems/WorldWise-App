import 'package:flutter/material.dart';
import 'package:world_wise/constants.dart';


class CustomPassTextField extends StatefulWidget {
  const CustomPassTextField(
      {super.key, this.hintText, required this.mycontroller});
  final String? hintText;

  final TextEditingController mycontroller;

  @override
  State<CustomPassTextField> createState() => _CustomPassTextFieldState();
}

class _CustomPassTextFieldState extends State<CustomPassTextField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    
    return TextField(
      obscureText: obscureText,
      controller: widget.mycontroller,
      decoration: InputDecoration(
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: obscureText
                  ? const Icon(
                      Icons.visibility_off_outlined,
                      color: Color(0xff263238),
                    )
                  : const Icon(
                      Icons.visibility_outlined,
                      color: Color(0xff263238),
                    )),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: hintTextColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: borderColor)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: borderColor))),
    );
  }
}
