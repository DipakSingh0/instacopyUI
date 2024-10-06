import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData iconName;
  final Widget route;

  const MyIconButton({
    super.key,
    required this.iconName ,
    required this.route ,

  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => route),
        );
      },
      icon: Icon(iconName),
      color: Colors.black,
      iconSize: 35,
    );
  }
}