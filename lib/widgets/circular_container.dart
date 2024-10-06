import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final String imagePath;
  final Text story;

  const CircularContainer({
    super.key, 
    required this.imagePath,
    required this.story,
    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          story,   ////////
        ],
      ),
    );
  }
}
