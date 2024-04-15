import 'package:flutter/material.dart';

class intro3 extends StatelessWidget {
  const intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/earn_money.png',
                width: 400,
                height: 400,
              ),
              SizedBox(height: 16.0),
              Text(
                'Earn Money',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 135, 15, 15),
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(height: 16.0),
              Text(
                'Give Rides to nearby',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
              Text(
                ' passenger, use promo codes',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
              Text(
                '& earn money.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
