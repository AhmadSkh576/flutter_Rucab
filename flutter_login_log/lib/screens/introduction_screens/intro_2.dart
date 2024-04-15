import 'package:flutter/material.dart';

class intro2 extends StatelessWidget {
  const intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/tracking.png',
                width: 400,
                height: 400,
              ),
              SizedBox(height: 16.0),
              Text(
                'Realtime Tracking',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 135, 15, 15),
                ),
              ),
              const SizedBox(height: 17),
              SizedBox(height: 16.0),
              Text(
                'Know your driver in advance and be',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
              Text(
                ' able to view current location real',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 96, 95, 95),
                ),
              ),
              Text(
                ' on the map',
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
