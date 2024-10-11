import 'package:flutter/material.dart';
import 'package:instacopy/mainpages/follow_page.dart';
import 'package:instacopy/widgets/circular_container.dart';
import 'package:instacopy/widgets/my_icon_button.dart';
import 'package:instacopy/mainpages/settings_page.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;

    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            pinned: false,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                  alignment: Alignment.topLeft, child: MyAppBar()), // xustom
            ),
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CustomScrollView(
          slivers: [
            // SliverToBoxAdapter wraps non-sliver widgets
            SliverToBoxAdapter(
              child: Column(
                children: [
                  // First row for profile pic, posts, following, and followers
                  MyProfilePicRow(),
                  SizedBox(height: 10),

                  // Second row for buttons
                  MyButtonRow(),
                  SizedBox(height: 10),

                  // Third  myhighlights row
                  MyHighlightsRow(),
                  SizedBox(height: 4),

                  //fourth posts
                  // MyDefaultTabBar(),
                  MyGridViewPost(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// topmost appbar
class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // PopupMenuButton to show accounts
          PopupMenuButton<String>(
            onSelected: (String value) {
              // print(value);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: '1',
                child: Text('dipak_singh000'),
              ),
              const PopupMenuItem<String>(
                value: '2',
                child: Text('kittie_chyan'),
              ),
              const PopupMenuItem<String>(
                value: '3',
                child: Text('Add Instagram Account'),
              ),
            ],
            child: Row(
              children: [
                const Icon(Icons.lock_outline),
                const SizedBox(width: 5),
                const Text(
                  'dipak_singh',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          // SizedBox(width: 180),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
                icon: Image.asset(
                  'lib/images/threads.png',
                  width: 25,
                  height: 25,
                ),
                color: Colors.black,
                iconSize: 35,
              ),
              MyIconButton(
                iconName: Icons.add_box_outlined,
                route: SettingsPage(),
              ),
              MyIconButton(
                iconName: Icons.menu,
                route: SettingsPage(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Row1 for profile
class MyProfilePicRow extends StatelessWidget {
  const MyProfilePicRow({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: CircularContainer(
                  imagePath: 'lib/images/im1.jpg',
                  circheight: 60,
                  circwidth: 60,
                  story: Text(
                    'Dipak Singh',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Silence is the best medicine'),
              ),
            ],
          ),
          Positioned(
            bottom: 56,
            right: 60,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.blue,
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 120,
        width: screenSize.width / 4 - 30,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '7',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'posts',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FollowPage()), // Replace with your page
          );
        },
        child: SizedBox(
          height: 120,
          width: screenSize.width / 4 - 30,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '153',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  'following',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FollowPage()), // Replace with your page
          );
        },
        child: SizedBox(
          height: 120,
          width: screenSize.width / 4 - 40,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '153',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  'following',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

//2nd row button row

class MyButtonRow extends StatelessWidget {
  const MyButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
            height: 35,
            width: screenSize.width / 2 - 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.brown[50],
            ),
            child: Center(child: Text('Edit profile'))),
        SizedBox(width: 8),
        Container(
            height: 35,
            width: screenSize.width / 2 - 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.brown[50],
            ),
            child: Center(child: Text('Share profile'))),
        SizedBox(width: 8),
        Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.brown[50],
            ),
            child: Center(
              child: Icon(Icons.person_add),
            )),
      ],
    );
  }
}

// 3rd highlights row
class MyHighlightsRow extends StatelessWidget {
  const MyHighlightsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircularContainer(
            imagePath: 'lib/images/im2.jpg',
            story: Text('hiking'),
            circwidth: 60,
            circheight: 60,
          ),
          CircularContainer(
            imagePath: 'lib/images/im3.jpg',
            story: Text('Nanakmatta'),
            circwidth: 60,
            circheight: 60,
          ),
          CircularContainer(
            imagePath: 'lib/images/im4.jpg',
            story: Text('A day in FWU'),
            circwidth: 60,
            circheight: 60,
          ),
          CircularContainer(
            imagePath: 'lib/images/im5.jpg',
            story: Text('Jharna'),
            circwidth: 60,
            circheight: 60,
          ),
          CircularContainer(
            imagePath: 'lib/images/im6.jpg',
            story: Text('MinorProject'),
            circwidth: 60,
            circheight: 60,
          ),
          CircularContainer(
            imagePath: 'lib/images/im7.jpg',
            story: Text('Flowers'),
            circwidth: 60,
            circheight: 60,
          ),
          CircularContainer(
            imagePath: 'lib/images/im2.jpg',
            story: Text('hiking'),
            circwidth: 60,
            circheight: 60,
          ),
        ],
      ),
    );
  }
}

// class MyDefaultTabBar extends StatelessWidget {
//   const MyDefaultTabBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('dipak_singh000'),
//           bottom: const TabBar(
//             isScrollable: true,
//             indicatorColor: Colors.white,
//             indicatorWeight: 4.0,
//             tabs: [
//               Tab(child: Icon(Icons.abc_sharp)),
//               Tab(child: Icon(Icons.abc_sharp)),
//               Tab(child: Icon(Icons.abc_sharp)),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             // 1st followers tab
//             Center(
//               child: MyGridViewPost(),
//             ),
//             // 2nd following tab
//             Center(child: Text("Following Tab")),
//             // 3rd Subscription tab
//             Center(child: Text("Subscriptions Tab")),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyGridViewPost extends StatelessWidget {
  const MyGridViewPost({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling
        children: List.generate(6, (index) {
          List<String> imagePaths = [
            'lib/images/im2.jpg',
            'lib/images/im3.jpg',
            'lib/images/im4.jpg',
            'lib/images/im5.jpg',
            'lib/images/im6.jpg',
            'lib/images/im7.jpg',
          ];
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: SizedBox(
              width: screenSize.width / 4,
              height: screenSize.width / 4,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(imagePaths[index]),
              ),
            ),
          );
        }),
      ),
    );
  }
}
