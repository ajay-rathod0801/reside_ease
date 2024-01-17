import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/bottom_navigation.dart';
import 'package:reside_ease/community_event.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              bottom: const TabBar(
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
            body: const TabBarView(
              children: <Widget>[
                Center(
                  child: Text("Posts"),
                ),
                CommunityEvent(), // Use your CommunityEvent widget directly here
                Center(
                  child: Text("Notice Board"),
                ),
              ],
            ),
            bottomNavigationBar: const BottomNavigation(),
          ),
        ),
      ),
    );
  }
}
