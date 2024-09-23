import 'package:code_db_1st/screens/MyCoins_screen/mycoin_screen.dart';
import 'package:code_db_1st/screens/explorer_screens/explore_screen.dart';
import 'package:code_db_1st/screens/login_home_screen/login_homescreen.dart';
import 'package:flutter/material.dart';

import 'screens/shop_screen/main_shop_screen.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const UserHomeScreen(), // Replace with your screen widgets
    const ExploreScreen(),
    // ChatScreen(),
    const MyCoinScreen(),
    const ShopScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(side: BorderSide(color: Color(0xff316AB7))),
        backgroundColor: const Color(0xff316AB7),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (builder) => ()));
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      body: IndexedStack(
        children: [_screens[_currentIndex]],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.blueGrey : Colors.blueGrey,
              size: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            label: "Explore",
            icon: Icon(
              Icons.explore,
              color: _currentIndex == 1 ? Colors.blueGrey : Colors.blueGrey,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "My coins",
            icon: Icon(
              Icons.live_tv,
              color: _currentIndex == 2 ? Colors.blueGrey : Colors.blueGrey,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "shop",
            icon: Icon(
              Icons.settings,
              color: _currentIndex == 3 ? Colors.blueGrey : Colors.blueGrey,
              size: 25,
            ),
          ),
        ],
        unselectedLabelStyle: TextStyle(color: Colors.blueGrey.withOpacity(.8)),
        selectedLabelStyle: const TextStyle(color: Colors.blueGrey),
        backgroundColor: Colors.white, // Set your desired background color here
        selectedItemColor: Colors.blueGrey, // Set the color for selected item
        unselectedItemColor: Colors.blueGrey
            .withOpacity(.8), // Set the color for unselected items
      ),
    );
  }
}