import 'package:flutter/material.dart';
import 'package:lost_found_app/profile.dart';
import 'package:lost_found_app/reportpage.dart';
import 'package:lost_found_app/searchpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List <Widget> pages = [
    const ReportPage(),
    const SearchPage(),
    const ProfilePage()
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.report),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),

      body: pages[_selectedIndex],
    );
  }
}
