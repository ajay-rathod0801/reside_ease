import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/bottom_navigation.dart';
import 'package:reside_ease/community_event_page.dart';
import 'package:reside_ease/widgets/top_appbar.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const TopAppBar(),
        body: Column(
          children: [
            Material(
              color: Colors.blue.shade100,
              child: const TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: <Widget>[
                  Tab(
                    text: 'Posts',
                  ),
                  Tab(
                    text: 'Events',
                  ),
                  Tab(
                    text: 'Notice Board',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: Text("Posts"),
                  ),
                  CommunityEvent(),
                  Center(
                    child: Text("Notice Board"),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
