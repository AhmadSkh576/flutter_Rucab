import 'dart:async';

import 'package:flutter/material.dart';
import 'package:senior_project_ruccab/main.dart';
import 'package:senior_project_ruccab/screens/auth/signin_screen.dart';
import 'package:senior_project_ruccab/screens/book_ride_main_screen.dart';
import 'package:senior_project_ruccab/screens/car_ride_screen.dart';
import 'package:senior_project_ruccab/screens/introduction_screen.dart';

import 'constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // After 5 seconds, navigate to the next screen
    Timer(const Duration(seconds: 2), () {
      sharedPrefenrece.getString('initial') == 'false'
          ? Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => const IntroductionScreen()),
              (route) => false,
            )
          : sharedPrefenrece.getString('signed') == 'true'
              ? sharedPrefenrece.getString('role') == 'driver'
                  ? Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CarRideScreen(),
                      ),
                      (route) => false)
                  : Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  BookRideMainScreen(),
                      ),
                      (route) => false)
              : Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                  (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'RUCCAB',
          style: TextStyle(
              color: mainColor, fontWeight: FontWeight.w600, fontSize: 50),
        ),
      ),
    );
  }
}
