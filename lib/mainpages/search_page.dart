import 'package:flutter/material.dart';
import 'package:instacopy/widgets/my_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    //this will make whole page scrolleable including searchbar
    return SingleChildScrollView(
      // physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: <Widget>[
          MySearchBar(),
          MyGridView(),
        ],
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: GridView.count(
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            children: List.generate(30, (index) {
              List<String> imagePaths = [
                'lib/images/im1.jpg',
                'lib/images/im2.jpg',
                'lib/images/im3.jpg',
                'lib/images/im4.jpg',
                'lib/images/im5.jpg',
                'lib/images/im6.jpg',
                'lib/images/im7.jpg',
                'lib/images/im8.jpg',
                'lib/images/im9.jpg',
                'lib/images/im10.png',
                'lib/images/im1.jpg',
                'lib/images/im2.jpg',
                'lib/images/im3.jpg',
                'lib/images/im4.jpg',
                'lib/images/im5.jpg',
                'lib/images/im6.jpg',
                'lib/images/im7.jpg',
                'lib/images/im8.jpg',
                'lib/images/im9.jpg',
                'lib/images/im10.png',
                'lib/images/im1.jpg',
                'lib/images/im2.jpg',
                'lib/images/im3.jpg',
                'lib/images/im4.jpg',
                'lib/images/im5.jpg',
                'lib/images/im6.jpg',
                'lib/images/im7.jpg',
                'lib/images/im8.jpg',
                'lib/images/im9.jpg',
                'lib/images/im10.png',
                'lib/images/im1.jpg',
                'lib/images/im2.jpg',
              ];
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: screenSize.width/3,
                    height: screenSize.width/3,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset(
                        imagePaths[index],
                      ),
                    ),
                  ),
                ),
              );
            }),
          )),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:instacopy/widgets/my_search_bar.dart';

// class SearchPage extends StatelessWidget {
//   const SearchPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // this will make the whole page scrollable, including the search bar
//     return NestedScrollView(
//       headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//         return <Widget>[
//           SliverAppBar(
//             pinned: true,
//             // expandedHeight: 40.0, // Adjust this as needed
//             flexibleSpace: FlexibleSpaceBar(
//               title: MySearchBar(), // your custom search bar
//             ),
//           ),
//         ];
//       },
//       body: MyGridView(),
//     );
//   }
// }

// class MyGridView extends StatelessWidget {
//   const MyGridView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.all(1.0),
//       child: SizedBox(
//         width: screenSize.width,
//         height: screenSize.height,
//         child: GridView.count(
//           shrinkWrap: true,
//           crossAxisCount: 3,
//           children: List.generate(30, (index) {
//             List<String> imagePaths = [
//               'lib/images/im1.jpg',
//               'lib/images/im2.jpg',
//               'lib/images/im3.jpg',
//               'lib/images/im4.jpg',
//               'lib/images/im5.jpg',
//               'lib/images/im6.jpg',
//               'lib/images/im7.jpg',
//               'lib/images/im8.jpg',
//               'lib/images/im9.jpg',
//               'lib/images/im10.png',
//               'lib/images/im1.jpg',
//               'lib/images/im2.jpg',
//               'lib/images/im3.jpg',
//               'lib/images/im4.jpg',
//               'lib/images/im5.jpg',
//               'lib/images/im6.jpg',
//               'lib/images/im7.jpg',
//               'lib/images/im8.jpg',
//               'lib/images/im9.jpg',
//               'lib/images/im10.png',
//               'lib/images/im1.jpg',
//               'lib/images/im2.jpg',
//               'lib/images/im3.jpg',
//               'lib/images/im4.jpg',
//               'lib/images/im5.jpg',
//               'lib/images/im6.jpg',
//               'lib/images/im7.jpg',
//               'lib/images/im8.jpg',
//               'lib/images/im9.jpg',
//               'lib/images/im10.png',
//               'lib/images/im1.jpg',
//               'lib/images/im2.jpg',
//             ];
//             return Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(1.0),
//                 child: SizedBox(
//                   width: screenSize.width / 3,
//                   height: screenSize.width / 3,
//                   child: FittedBox(
//                     fit: BoxFit.fill,
//                     child: Image.asset(
//                       imagePaths[index],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
