import 'package:flutter/material.dart';
import 'package:reside_ease/home_screen.dart';
import 'package:reside_ease/community_page.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  ParentWidgetState createState() => ParentWidgetState();
}

class ParentWidgetState extends State<ParentWidget> {
  int currentPageIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    CommunityPage(),
    ];

  void changePage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigation(
        selectedIndex: currentPageIndex,
        onIndexSelected: changePage,
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onIndexSelected;

  const BottomNavigation({
    Key? key,
    required this.selectedIndex,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.hive_rounded),
          icon: Badge(child: Icon(Icons.hive_outlined)),
          label: 'Community',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.person),
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile',
        ),
      ],
      backgroundColor: Colors.white,
      onDestinationSelected: onIndexSelected,
      indicatorColor: Colors.blue.shade200,
      selectedIndex: selectedIndex,
    );
  }
}
