import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:progress_play/screens/home_screen.dart';
import 'package:progress_play/screens/leaderboard_screen.dart';
import 'package:progress_play/screens/stats_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> _screens = [
    HomeScreen(),
    StatsScreen(),
    LeaderboardScreen(),
  ];

  int selectIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectIdx],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        color: const Color(0xff282424),
        child: GNav(
          backgroundColor: const Color(0xff282424),
          tabBackgroundColor: const Color(0xff181414),
          activeColor: Colors.white,
          gap: 2,
          onTabChange: (value) {
            setState(() {
              selectIdx = value;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.token,
              text: 'Stats',
            ),
            GButton(
              icon: Icons.leaderboard,
              text: 'Leaderboard',
            ),
          ],
        ),
      ),
    );
  }
}
