import 'package:flutter/material.dart';

import '../screens/login_Page.dart';


class AlreadyRegistered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "ALREADY REGISTERED? ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: const Text(
            "LOG IN!",
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
