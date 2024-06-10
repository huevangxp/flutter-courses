import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'dashboard_screen.dart';
import 'favorites_screen.dart';
import 'settings_screen.dart';
import 'profile_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<Widget> items = <Widget>[
    Icon(Icons.home, color: Colors.white,),
    Icon(Icons.dashboard, color: Colors.white,),
    Icon(Icons.favorite, color: Colors.white,),  
    Icon(Icons.settings, color: Colors.white,),
    Icon(Icons.person, color: Colors.white,), 
  ];

  final List<Widget> screens = [
    HomeScreen(),
    DashboardScreen(),
    FavoritesScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ];

  int _pageIndex = 2;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.teal,
        items: items,
        index: _pageIndex,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
          _pageController.jumpToPage(index);
        },
      ),
    );
  }
}
