import 'package:flutter/material.dart';
import 'package:senior_project_ruccab/splash_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPrefenrece;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefenrece = await SharedPreferences.getInstance();
  runApp(
      // MultiProvider(
      //   providers: [],
      //   child:,
      // ),
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
