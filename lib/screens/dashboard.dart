import 'package:flutter/material.dart';
import 'package:harv/screens/home.dart';

import '../constants/global_variables.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool alerted = false;

  int _page = 0;
  List<Widget> pages = [
    const Home(),
    const Text('data'),
    const Text('data'),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.primaryColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.cardBackgroundColor,
        iconSize: 24,
        onTap: updatePage,
        items: [
          //Home
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? GlobalVariables.cardBackgroundColor
                        : Colors.white,
                  ),
                ),
              ),
              child: Icon(Icons.home_rounded),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariables.cardBackgroundColor
                        : Colors.white,
                  ),
                ),
              ),
              child: Icon(Icons.description_rounded),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariables.cardBackgroundColor
                        : Colors.white,
                  ),
                ),
              ),
              child: Icon(Icons.settings),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
