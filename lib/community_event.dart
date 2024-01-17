import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/event_card.dart';

class CommunityEvent extends StatelessWidget {
  const CommunityEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView(
            padding: EdgeInsets.zero,
            children: [
              CardEvents(
                imageUrl: 'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                title: 'Support our Little Stars 🌟',
                description: 'Help brighten the future of our little stars by donating to their education fund.',
                onBookmarkPressed: () {
                  // Add bookmark logic here
                },
                onLearnMorePressed: () {
                  // Add learn more logic here
                },
              ),
              CardEvents(
                imageUrl: 'https://example.com/another-image.jpg',
                title: 'Another Card Title',
                description: 'Description for another card.',
                onBookmarkPressed: () {
                  // Add bookmark logic here
                },
                onLearnMorePressed: () {
                  // Add learn more logic here
                },
              ),
              CardEvents(
                imageUrl: 'https://example.com/another-image.jpg',
                title: 'Another Card Title',
                description: 'Description for another card.',
                onBookmarkPressed: () {
                  // Add bookmark logic here
                },
                onLearnMorePressed: () {
                  // Add learn more logic here
                },
              ),
              CardEvents(
                imageUrl: 'https://example.com/another-image.jpg',
                title: 'Another Card Title',
                description: 'Description for another card.',
                onBookmarkPressed: () {
                  // Add bookmark logic here
                },
                onLearnMorePressed: () {
                  // Add learn more logic here
                },
              ),
              // Add more CardEvents as needed
            ],
          ),
    );
  }
}
