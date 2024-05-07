import 'package:cookpad/page/favorite_page.dart';
import 'package:cookpad/page/home_page.dart';
import 'package:cookpad/page/profile_page.dart';
import 'package:cookpad/page/search_page.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/textfield_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: Container(
        // decoration: BoxDecoration(color: Colors.white),
        height: 60,
        child: NavigationBar(
          backgroundColor: Colors.white,
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) =>
              setState(() => this._currentIndex = index),
          // indicatorColor: Colors.white,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: '',
              selectedIcon:
                  Icon(Icons.home_outlined, color: Colors.amber.shade800),
            ),
            NavigationDestination(
                icon: Icon(Icons.search),
                label: '',
                selectedIcon: Icon(Icons.search, color: Colors.amber.shade800)),
            NavigationDestination(
                icon: Icon(Icons.add_box_outlined),
                label: '',
                selectedIcon:
                    Icon(Icons.add_box_outlined, color: Colors.amber.shade800)),
            NavigationDestination(
              icon: Icon(Icons.workspace_premium_outlined),
              label: '',
              selectedIcon: Icon(Icons.workspace_premium_outlined,
                  color: Colors.amber.shade800),
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              label: '',
              selectedIcon:
                  Icon(Icons.person_2_outlined, color: Colors.amber.shade800),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchPage();
      case 2:
        return Center(child: Text('add'));
      case 3:
        return Center(child: Text('Premium'));
      case 4:
        return ProfileScreen();
      default:
        return Container();
    }
  }
}
