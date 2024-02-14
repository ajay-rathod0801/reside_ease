import 'package:flutter/material.dart';
import 'package:reside_ease/introductory_screen.dart';


import 'package:reside_ease/widgets/bottom_navigation.dart';
import 'package:reside_ease/profile_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromRGBO(249, 249, 255, 1),
      ),
      home: ProfilePage(),
    );
  }
}
