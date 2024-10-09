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
    HomeContentPage(),
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
      // selectedIndex with decide which page appears at startup
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

          MySilverAppBar(), // Appbar widget

        ];
      },
      body: Column(
        children: [
          
          MyStories(), //Stories widget

          MyCard(), // posts widget

        ],
      ),
    );
  }
}

//appbar Instagram logo , notification and chat logo
class MySilverAppBar extends StatelessWidget {
  const MySilverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
              icon: Image.asset('lib/images/heart.png', width: 24, height: 24),
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
    );
  }
}

// horizontal row with Stories and name

class MyStories extends StatelessWidget {
  const MyStories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Stack(
            children: [
              CircularContainer(
                imagePath: 'lib/images/im1.jpg',
                circheight: 75,
                circwidth: 75,
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
          CircularContainer(
            imagePath: 'lib/images/im2.jpg',
            story: Text('Cat'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im3.jpg',
            story: Text('HappiMan'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im4.jpg',
            story: Text('Buddha'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im5.jpg',
            story: Text('Jharna'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im6.jpg',
            story: Text('Shailesh'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im7.jpg',
            story: Text('Romantic'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im8.jpg',
            story: Text('Bishnu'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im9.jpg',
            story: Text('AmresPoori'),
            circheight: 75,
            circwidth: 75,
          ),
          CircularContainer(
            imagePath: 'lib/images/im10.png',
            story: Text('DhamiG'),
            circheight: 75,
            circwidth: 75,
          ),
        ],
      ),
    );
  }
}

// Posts
class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                // color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                          backgroundImage: AssetImage('lib/images/im1.jpg')),
                      title: const Text('dipak_singh000'),
                      subtitle: const Text('', style: TextStyle(fontSize: 12)),
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
                          '1M',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble_outline_rounded),
                        ),
                        Text(
                          '500K',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                        ),
                        Text(
                          '250K',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 220,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                          backgroundImage: AssetImage('lib/images/im2.jpg')),
                      title: const Text('kittie_chyan'),
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
                              image: AssetImage('lib/images/im2.jpg'))),
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
                          '10K',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble_outline_rounded),
                        ),
                        Text(
                          '200',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send),
                        ),
                        Text(
                          '100',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 220,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border),
                        ),
                      ],
                    ),
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
                              image: AssetImage('lib/images/im3.jpg'))),
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
                        Text(
                          '20K',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 220,
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
            }));
  }
}
