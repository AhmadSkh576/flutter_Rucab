import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "LOG IN",
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
