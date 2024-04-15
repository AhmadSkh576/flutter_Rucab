import 'package:flutter/material.dart';

import '../screens/signup.dart';

class newHere extends StatelessWidget {
  const newHere({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "NEW HERE? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );
          },
          child: const Text(
            "REGISTER NOW!",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 135, 15, 15),
            ),
          ),
        ),
      ],
    );
  }
}
