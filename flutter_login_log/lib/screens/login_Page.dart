
import 'package:flutter/material.dart';

import '../components/Input_Field.dart';
import '../components/button_logsign.dart';
import '../components/forgot_password.dart';
import '../components/login_text.dart';
import '../components/new_hereRegNow.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/login_Pic.png',
                  width: 300,
                  height: 300,
                ),
                LoginText(),
                const SizedBox(height: 5),
                InputField(
                  hintText: "ENTER UNIVERSITY EMAIL",
                  iconPath: 'assets/icons/email.png',
                  controller: usernameController,
                ),
                const SizedBox(height: 10),
                InputField(
                  hintText: "ENTER PASSWORD",
                  iconPath: 'assets/icons/password.png',
                  controller: passwordController,
                  isPassword: true,
                ),
                const SizedBox(height: 5),
                ExtraText(),
                const SizedBox(height: 20),
                LoginSignupButton(
                  usernameController: usernameController,
                  passwordController: passwordController,
                   buttonText: 'LOG IN',
                ),
                const SizedBox(height: 60),
                newHere(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
