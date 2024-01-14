// create a horizontal card widget with a title and subtitle below the title and am image at the end of the card from left to right.

import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const HorizontalCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600, // semibold
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        subtitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500, // semibold
                          fontSize: 14,
                        ),
                      ),
                    ),
                    // Add your subtitle Text widget here
                  ],
                ),
                const SizedBox(
                    width:
                        8.0), // Add some space between the text and the image
                Expanded(
                  child: Image.asset(image), // Your image goes here
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
