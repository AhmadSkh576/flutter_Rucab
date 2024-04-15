import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final String iconPath;
  final TextEditingController controller;
  final bool isPassword;

  const InputField({
    required this.hintText,
    required this.iconPath,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromARGB(140, 21, 21, 21),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 11, right: 12.0),
          child: Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
        ),
        border: OutlineInputBorder(
          // Add this line to set the border
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Colors.black, // Customize the border color here
            width: 1.0, // Customize the border width here
          ),
        ),
        focusedBorder: OutlineInputBorder(
          // Add this line to set the focused border
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Colors.blue, // Customize the focused border color here
            width: 2.0, // Customize the focused border width here
          ),
        ),
      ),
      obscureText: isPassword,
    );
  }
}
