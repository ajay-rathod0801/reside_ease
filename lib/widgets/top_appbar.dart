import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/bottom_navigation.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.person_2_rounded, color: Colors.black),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Profile Clicked'),
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert, color: Colors.black),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Notification Clicked'),
                ),
              );
            },
          ),
          const SizedBox(width: 10.0),
          IconButton(
            icon: const Icon(Icons.message_rounded, color: Colors.black),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Message Clicked'),
                ),
              );
            },
          ),
        ],
      ),
      body: const Scaffold(
        body: Center(
          child: Text('Home Page Demo'),
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
