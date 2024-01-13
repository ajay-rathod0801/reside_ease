import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/card_small.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SmallCard(
                title: 'Invite Guests',
                image: 'assets/icons/invite.png',
                // route: '/ten_digit_code',
              ),
              SmallCard(
                title: 'Visitor Log',
                image: 'assets/icons/log.png',
                // route: '/login',
              ),
              SmallCard(
                title: 'Call Gate',
                image: 'assets/icons/call.png',
                // route: '/register',
              ),
              SmallCard(
                title: 'SOS',
                image: 'assets/icons/SOS.png',
                // route: '/otp',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
