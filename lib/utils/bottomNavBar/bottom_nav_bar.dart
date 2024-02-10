import 'package:bookngo/configs/app_color.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Colors.black,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 1,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black54),
              label: 'Home',
              activeIcon: Icon(Icons.home, color: AppColor.redTheme)),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie, color: Colors.black54),
              label: 'Movies',
              activeIcon: Icon(Icons.movie, color: AppColor.redTheme)),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_rounded, color: Colors.black54),
              label: 'Events',
              activeIcon: Icon(Icons.live_tv_rounded, color: AppColor.redTheme)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black54),
              label: 'Profile',
              activeIcon: Icon(Icons.person, color: AppColor.redTheme))
        ]);
  }
}
