import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey,
                hintText: 'Search', 
                prefixIcon: Icon(Icons.search), 
                contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20), 
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      12), 
                
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      12), 
                  borderSide: BorderSide(
                    color: Colors.grey, 
                    width: 1, 
                  ),
                ),
              ),
            )),
            
      );
    
  }
}