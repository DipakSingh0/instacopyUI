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
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // PopupMenuButton to show accounts
            PopupMenuButton<String>(
              onSelected: (String value) {
                // print(value); // You can handle your logic here
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
            Row(
              mainAxisSize: MainAxisSize.min,
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
                  iconName: Icons.menu,
                  route: SettingsPage(),
                ),
                MyIconButton(
                  iconName: Icons.add_box_outlined,
                  route: SettingsPage(),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: 206,
          child: Column(children: [
            // first row for profilepic , post , following and followers
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Column(
                      children: [
                        CircularContainer(
                          imagePath: 'lib/images/im1.jpg', 
                          circheight: 60,  circwidth: 60,
                          story: Text(
                            'Dipak Singh',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text('Silence is the best medicine')),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 56,
                    right: 50,
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
                width: 100,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '7',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
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
                        builder: (context) =>
                            FollowPage()), // Replace with your page
                  );
                },
                child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '153',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
                        builder: (context) =>
                            FollowPage()), // Replace with your page
                  );
                },
                child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '153',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
            ]),
            SizedBox(height: 12),

            // 2nd row .................
            Row(
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
            ),
                   

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircularContainer(
                      imagePath: 'lib/images/im2.jpg', story: Text('') , circwidth: 60, circheight: 60,),
                  CircularContainer(
                      imagePath: 'lib/images/im3.jpg', story: Text(''), circwidth: 60,
                    circheight: 60,
                  ),
                  CircularContainer(
                      imagePath: 'lib/images/im4.jpg', story: Text(''),
                    circwidth: 60,
                    circheight: 60,
                  ),
                  CircularContainer(
                      imagePath: 'lib/images/im5.jpg', story: Text(''),
                    circwidth: 60,
                    circheight: 60,
                  ),
                  CircularContainer(
                      imagePath: 'lib/images/im6.jpg', story: Text(''),
                    circwidth: 60,
                    circheight: 60,
                  ),
                  CircularContainer(
                      imagePath: 'lib/images/im7.jpg', story: Text(''),
                    circwidth: 60,
                    circheight: 60,
                  ),
                  
                 ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
