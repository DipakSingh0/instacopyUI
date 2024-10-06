// import 'package:flutter/material.dart';
// import 'package:instacopy/widgets/circular_container.dart';
// import 'package:instacopy/mainpages/add_page.dart';
// import 'package:instacopy/mainpages/my_profile_page.dart';
// import 'package:instacopy/mainpages/reels_page.dart';
// import 'package:instacopy/mainpages/search_page.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:instacopy/widgets/my_bottom_nav_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instacopy/mainpages/add_page.dart';
import 'package:instacopy/mainpages/my_profile_page.dart';
import 'package:instacopy/mainpages/reels_page.dart';
import 'package:instacopy/mainpages/search_page.dart';
import 'package:instacopy/widgets/circular_container.dart';
import 'package:instacopy/widgets/my_bottom_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContentPage(), // Actual home content widget
    SearchPage(),
    AddPage(),
    ReelsPage(),
    MyProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0 ? HomeContentPage() : _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContentPage extends StatelessWidget {
  const HomeContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            centerTitle: false,
            pinned: false,
            floating: false,
            snap: false,
            expandedHeight: 75.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Instagram',
                style: GoogleFonts.pacifico(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              background: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: null,
                    icon: Image.asset('lib/images/heart.png',
                        width: 24, height: 24),
                  ),
                  SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: IconButton(
                      onPressed: null,
                      icon: Image.asset('lib/images/messenger.png',
                          width: 24, height: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  children: [
                    CircularContainer(
                      imagePath: 'lib/images/im1.jpg',
                      story: Text('Add Story'),
                    ),
                    Positioned(
                      bottom: 35,
                      right: 12,
                      child: Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // CircleAvatar(
                //   radius: 50, // Size of the circle avatar
                //   backgroundImage:
                //       AssetImage('lib/images/im2.jpg'), // Path to your image
                // ),
                CircularContainer(
                    imagePath: 'lib/images/im2.jpg', story: Text('Cat')),
                CircularContainer(
                    imagePath: 'lib/images/im3.jpg', story: Text('HappiMan')),
                CircularContainer(
                    imagePath: 'lib/images/im4.jpg', story: Text('Buddha')),
                CircularContainer(
                    imagePath: 'lib/images/im5.jpg', story: Text('Jharna')),
                CircularContainer(
                    imagePath: 'lib/images/im6.jpg', story: Text('Shailesh')),
                CircularContainer(
                    imagePath: 'lib/images/im7.jpg', story: Text('Romantic')),
                CircularContainer(
                    imagePath: 'lib/images/im8.jpg', story: Text('Bishnu')),
                CircularContainer(
                    imagePath: 'lib/images/im9.jpg', story: Text('AmresPoori')),
                CircularContainer(
                    imagePath: 'lib/images/im10.png', story: Text('DhamiG')),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 18,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  // color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                            backgroundImage: AssetImage('lib/images/im1.jpg')),
                        title: const Text('dipak_singh000'),
                        subtitle: const Text('Suggested for you',
                            style: TextStyle(fontSize: 12)),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/images/im1.jpg'))),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border),
                            ),
                          ),
                          Text(
                            '675K',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chat_bubble_outline_rounded),
                          ),
                          Text(
                            '75K',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_border),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   MyHomePageState createState() => MyHomePageState();
// }

// class MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   // List of pages
//   final List<Widget> _pages = [
//     HomeContentPage(), // Actual home content widget
//     SearchPage(),
//     AddPage(),
//     ReelsPage(),
//     MyProfilePage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Only display the AppBar if the user is on the home page (index 0)
//       appBar: _selectedIndex == 0
//           ? AppBar(
//               title: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   TextButton(
//                     onPressed: null,
//                     child: Text(
//                       'Instagram',
//                       style: GoogleFonts.pacifico(
//                         textStyle: TextStyle(
//                           fontSize: 28,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         onPressed: null,
//                         icon: Image.asset('lib/images/heart.png',
//                             width: 24, height: 24),
//                       ),
//                       SizedBox(width: 3),
//                       IconButton(
//                         onPressed: null,
//                         icon: Image.asset('lib/images/messenger.png',
//                             width: 24, height: 24),
//                       ),
//                       SizedBox(width: 3),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           : null, // Don't show AppBar for other pages

//       body: _pages[_selectedIndex], // Show the selected page

//       bottomNavigationBar: MyBottomNavBar(
//         selectedIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

// class HomeContentPage extends StatelessWidget {
//   const HomeContentPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Stack(
//                   children: [
//                     CircularContainer(
//                       imagePath: 'lib/images/im1.jpg',
//                       story: Text('Add Story'),
//                     ),
//                     Positioned(
//                       bottom: 35,
//                       right: 12,
//                       child: Container(
//                         width: 26,
//                         height: 26,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           border: Border.all(width: 2, color: Colors.white),
//                           color: Colors.blue,
//                         ),
//                         child: Center(
//                           child: Icon(
//                             Icons.add,
//                             size: 18,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // CircleAvatar(
//                 //   radius: 50, // Size of the circle avatar
//                 //   backgroundImage:
//                 //       AssetImage('lib/images/im2.jpg'), // Path to your image
//                 // ),
//                 CircularContainer(
//                     imagePath: 'lib/images/im2.jpg', story: Text('Cat')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im3.jpg', story: Text('HappiMan')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im4.jpg', story: Text('Buddha')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im5.jpg', story: Text('Jharna')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im6.jpg', story: Text('Shailesh')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im7.jpg', story: Text('Romantic')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im8.jpg', story: Text('Bishnu')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im9.jpg', story: Text('AmresPoori')),
//                 CircularContainer(
//                     imagePath: 'lib/images/im10.png', story: Text('DhamiG')),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 100, 
//             width: double.infinity,
            
//             child: ListView.builder(
//               itemCount: 5,
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                   color: Colors.blue,
//                   child: Column(
//                     children: [
//                       ListTile(
//                         leading: CircleAvatar(backgroundImage: AssetImage('lib/images/im1.jpg' )),
//                         title: Text('dipak_singh000'),
//                         subtitle: Text('suggested for you', style: TextStyle(fontSize: 12 ),),
//                         trailing: IconButton(
//                           onPressed: () {}, 
//                           icon: Icon(Icons.menu)),
//                       ),
//                     ],
//                   )
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
