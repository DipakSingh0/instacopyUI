
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final String imagePath;
  final Text story;
  final double circwidth;
  final double circheight;


  const CircularContainer({
    super.key, 
    required this.imagePath,
    required this.story,
    required this.circwidth,
    required this.circheight,

    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          Container(
            width: circwidth,
            height: circheight,
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
