import 'package:flutter/material.dart';
import 'package:instacopy/widgets/my_search_bar.dart';

class FollowPage extends StatelessWidget {
  const FollowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyDefaultTab();
  }
}

class MyDefaultTab extends StatelessWidget {
  const MyDefaultTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('dipak_singh000'),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 4.0,
            tabs: [
              Tab(
                child: Text(
                  '157 followers',
                ),
              ),
              Tab(
                child: Text(
                  '153 following',
                ),
              ),
              Tab(
                child: Text(
                  '0 subscriptions',
                ),
              ),
              Tab(
                child: Text(
                  'Flagged',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 1st followers tab
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MySearchBar(),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'All followers',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
               Expanded(
                 child: ListView(
                  children: <Widget>[
                     
                       ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im9.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ), title: Text('suraj_thapa000'),
                        subtitle: Text('S_u_r_a_j'),
                        trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im2.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ), title: Text('bimalbistthere'),
                        subtitle: Text('Bimal Bist'),
                        trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im3.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ), title: Text('manibhatt10'),
                        subtitle: Text('Mani Bhatt'),
                        trailing: Icon(Icons.more_vert),
                      ),
                       ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im5.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ),  title: Text('kunaldhami69'),
                        subtitle: Text('Kunal Dhami'),
                        trailing: Icon(Icons.more_vert),
                      ),
                       ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im6.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ), title: Text('Devkota_shailesh'),
                        subtitle: Text('Shailesh Devkota'),
                        trailing: Icon(Icons.more_vert),
                      ),
                       ListTile(
                         leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im7.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ), subtitle: Text('Prabesh Sharma'),
                        title: Text('prabesh__sharma'),
                        trailing: Icon(Icons.more_vert),
                      ),
                       ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im8.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ),  subtitle: Text('Soul Hacker'),
                        title: Text('its_sameer_4447'),
                         trailing: Icon(Icons.more_vert),
                       ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im9.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ), title: Text('Santosh Deupa'),
                        subtitle: Text('santosh'),
                        trailing: Icon(Icons.more_vert),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'lib/images/im8.jpg'), // Load the image as the avatar background
                          radius:
                              20, // Adjust the size of the circle (optional)
                        ),  title: Text('Neeru Bista'),
                        subtitle: Text('niruta'),
                       trailing: Icon(Icons.more_vert),
                      ),
                       
                  ],
                 ),
               )
              ],
            ),
            // 2nd following tab
            Column(
              children: [
                MySearchBar(),
                ListTile(
                  leading: Image.asset('lib/images/im2.jpg'),
                  title: Text('dipaksingh000'),
                  trailing: Icon(Icons.abc),
                ),
              ],
            ),
            // 3rd Subscription tab
            Column(
              children: [],
            ),
            // 4th Flagged tab - empty
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
