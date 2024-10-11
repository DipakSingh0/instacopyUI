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
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Image.asset('lib/images/im1.jpg'),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'All followers',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // 2nd following tab
            Column(
              children: [
                MySearchBar(),
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
