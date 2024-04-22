import 'package:flutter/material.dart';
import 'package:senior_project_ruccab/constant.dart';
import 'package:senior_project_ruccab/main.dart';
import 'package:senior_project_ruccab/screens/book_ride_main_screen.dart';
import 'package:senior_project_ruccab/screens/car_ride_screen.dart';


class SelectionRoleScreen extends StatefulWidget {
  const SelectionRoleScreen({super.key});

  @override
  State<SelectionRoleScreen> createState() => _SelectionRoleScreenState();
}

class _SelectionRoleScreenState extends State<SelectionRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: double.maxFinite,
            width: double.maxFinite,
            child: Image.asset(
              "assets/images/mapWallpaper.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 55,
            left: 10,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: mainColor,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "Select Your role",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                    letterSpacing: 0.6,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3 - 100,
            left: MediaQuery.of(context).size.width / 2.25 - 100,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                     sharedPrefenrece.setString('signed', 'true');
                    sharedPrefenrece.setString('role', 'driver');
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CarRideScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/driver.png',
                        ),
                        const Text(
                          'Create ride',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    "OR",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                     sharedPrefenrece.setString('signed', 'true');
                    sharedPrefenrece.setString('role', 'passenger');

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookRideMainScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/passenger.png',
                        ),
                        const Text(
                          'Take ride',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
