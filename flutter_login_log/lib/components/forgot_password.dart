import 'package:flutter/material.dart';

class ExtraText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        "FORGOT PASSWORD?",
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 135, 15, 15),
        ),
      ),
    );
  }
}
