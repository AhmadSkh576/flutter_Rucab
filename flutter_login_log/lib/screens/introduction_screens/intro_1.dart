import 'package:flutter/material.dart';

class intro1 extends StatelessWidget {
  const intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/request_ride.png',
                width: 400,
                height: 400,
              ),
              SizedBox(height: 16.0),
              Text(
                'Request a Ride',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 135, 15, 15),
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(height: 16.0),
              Text(
                'Request a ride get picked up by',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
              Text(
                ' a nearby driver',
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
