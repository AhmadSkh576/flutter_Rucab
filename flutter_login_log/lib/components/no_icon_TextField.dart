import 'package:flutter/material.dart';

Widget inputFieldNoIcon(String hintText, TextEditingController controller,
    {bool isPassword = false}) {
  var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: const BorderSide(color: Color.fromARGB(255, 135, 15, 15)),
  );

  return TextField(
    style: const TextStyle(color: Colors.black),
    controller: controller,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Color.fromARGB(140, 21, 21, 21),
      ),
      enabledBorder: border,
      focusedBorder: border,
    ),
    obscureText: isPassword,
  );
}
