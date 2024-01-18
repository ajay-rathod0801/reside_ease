import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/bottom_navigation.dart';
import 'package:reside_ease/community_event_page.dart';
import 'package:reside_ease/widgets/top_appbar.dart';
import 'package:reside_ease/community_notice_board.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

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
                  CommunityNotice()
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
