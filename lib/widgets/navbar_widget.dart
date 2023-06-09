import 'package:Ecoflow/screens/action_screen.dart';
import 'package:Ecoflow/screens/home_screen.dart';
import 'package:Ecoflow/screens/metrics_screen.dart';
import 'package:Ecoflow/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import '../screens/resources_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  List<Widget> pages = [
    const HomeScreen(),
    const ActionScreen(),
    const ResourcesScreen(),
    const MetricsScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.lightbulb),
            label: 'Action',
          ),
          NavigationDestination(
            icon: Icon(Icons.book),
            label: 'Resources',
          ),
          NavigationDestination(
            icon: Icon(Icons.analytics),
            label: 'Metrics',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
