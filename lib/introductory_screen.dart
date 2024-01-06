import 'package:flutter/material.dart';
import 'package:reside_ease/login_screen.dart';

class IntroductoryScreen extends StatelessWidget {
  const IntroductoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 600,
              width: double.infinity,
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              icon: const Icon(
                Icons.arrow_forward,
                size: 20,
                color: Colors.black,
              ),
              label: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
