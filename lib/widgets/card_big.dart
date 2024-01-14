import 'package:flutter/material.dart';

class CardBig extends StatelessWidget {
  final String title;
  final String image;
  final String buttonText;
  final Color cardColor;
  final Color containerColor;

  const CardBig({
    Key? key,
    required this.title,
    required this.image,
    required this.buttonText,
    required this.cardColor,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: cardColor,
        child: SizedBox(
          height: 250,
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, height: 150, width: double.infinity),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 88.0,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600, // semibold
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.purple.shade900),
                      ),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600, // semibold
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}