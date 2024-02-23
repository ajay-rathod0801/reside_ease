import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/message_card.dart';

class CommunityPost extends StatelessWidget {
  const CommunityPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
        ),
        children: [
          Divider(
            height: 0,
            color: Colors.black,
          ),
          CardNotice(
            leading: CircleAvatar(
              child: Text('A'),
            ),
            title: 'Ashish Patel, A-301',
            subtitle: '11 hours ago',
            description: "Looking to purchase a 3 BHK any leads???",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),
          Divider(
            height: 0,
            color: Colors.black,
          ),
          CardNotice(
            leading: CircleAvatar(
              child: Text('B'), // You can place initials or an image here
            ),
            title: 'Varun Mandal, N-302',
            subtitle: '12 days ago',
            description:
                " Kudos to our amazing maintanance team for promptly fixing the elevator issue - your hard work doesn't go unnoticed!",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),
          Divider(
            height: 0,
            color: Colors.black,
          ),
          CardNotice(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/icons/avatar1.jpg'), // You can place initials or an image here
            ),
            title: 'Aryan Lumrai, B-201',
            subtitle: '12 days ago',
            description:
                "Just moved in and already feeling warm welcome from our neighbors! Excited to be a part of this wonderful community",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),
          Divider(
            height: 0,
            color: Colors.black,
          ),
          CardNotice(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/icons/avatar1.jpg'), // You can place initials or an image here
            ),
            title: 'Keisha Adebe, A-102',
            subtitle: '3 weeks ago',
            description:
                "A big thank you to whoever found my daughter's lost teddy bear near the playground and left it at the community center. Your kindness made her day, and we're grateful for this tight-knit community",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),
          Divider(
            height: 0,
            color: Colors.black,
          ),
          CardNotice(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/icons/avatar1.jpg'), // You can place initials or an image here
            ),
            title: 'Manuel Ababio, F-101',
            subtitle: '14 weeks ago',
            description:
                "Shoutout to our vigilant neighbors who noticed a suspicious activity and promptly reported it to the authorities.",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),
          // Add more CardEvents as needed
        ],
      ),
    );
  }
}
