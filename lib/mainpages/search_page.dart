import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
      Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
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
          )),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: screenSize.width,
          height: 500,
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 4,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(52, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }),
          ),
        ),
      )
    ]));
  }
}
