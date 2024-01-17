import 'package:flutter/material.dart';

// import 'package:reside_ease/home_screen.dart';
import 'package:reside_ease/introductory_screen.dart';
// import 'package:reside_ease/otp_screen.dart';
// import 'package:reside_ease/introductory_screen.dart';
// import 'package:reside_ease/widgets/top_appbar.dart';
// import 'package:reside_ease/widgets/bottom_navigation.dart';
// import 'package:reside_ease/otp_screen.dart';
// import 'package:reside_ease/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromRGBO(249, 249, 255, 1),
        brightness: Brightness.light,
      ),
      home: const IntroductoryScreen(),
    );
  }
}
