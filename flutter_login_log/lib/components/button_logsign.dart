import 'package:flutter/material.dart';
import 'package:flutter_login_log/screens/temp_screen.dart';
import 'package:flutter_login_log/utils/http_req.dart';

class LoginSignupButton extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final String buttonText;

  const LoginSignupButton({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final httpRequest = HttpRequests();
    return ElevatedButton(
      onPressed: () async {
        print("email ${usernameController.text}");
        print("password ${passwordController.text}");
        var response = await httpRequest.login(
            usernameController.text, passwordController.text);

        if (response[0] == true) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TempScreen()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("${response[1]}"),
          ));
        }
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 135, 15, 15),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
