import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  // Create a TextEditingController
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TextField(
            controller: _searchController, // Attach the controller
            decoration: InputDecoration(
              fillColor: Colors.grey,
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
