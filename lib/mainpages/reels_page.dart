import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GridView.count(
      
  // Create a grid with 2 columns. If you change the scrollDirection to
  // horizontal, this produces 2 rows.
  crossAxisCount: 4,
  // Generate 100 widgets that display their index in the List.
  children: List.generate(50, (index) {
    
    return Center(
      heightFactor: screenSize.height,
      widthFactor: screenSize.width,
      child: Text(
        'Item $index',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }),
);
    
  }
}
