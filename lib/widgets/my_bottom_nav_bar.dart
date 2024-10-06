import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
   final int selectedIndex;
   final Function(int) onTap;

  const MyBottomNavBar(
      {super.key, 
      required this.selectedIndex, 
      required this.onTap, 
      // required Column body
      });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ondemand_video_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      onTap: onTap,
    );
  }
}

