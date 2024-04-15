import 'package:flutter/material.dart';

class SignupText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "SIGN UP",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Color.fromARGB(255, 135, 15, 15),
        ),
      ),
    );
  }
}
