import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kafiil_app/features/country/country.dart';
import 'package:kafiil_app/features/servies/servies_screen.dart';
import 'package:kafiil_app/features/who_iam/who_iam.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  String link = "assets/UserCircle.svg";
  final List<Widget> _children = [
    const WhoIam(),

    CountryTable(),
    ServiesScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/123.svg"),
            activeIcon: SvgPicture.asset("assets/UserCircle.svg"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/1234.svg"),
            activeIcon: SvgPicture.asset("assets/GlobeHemisphereWest.svg"),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/12.svg"),
            activeIcon: SvgPicture.asset("assets/service.svg"),
            label: 'Services',
          ),
        ],
      ),
    );
  }
}
