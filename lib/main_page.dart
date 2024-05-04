import 'package:cookpad/page/favorite_page.dart';
import 'package:cookpad/page/home_page.dart';
import 'package:cookpad/page/search_page.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/textfield_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigation extends StatefulWidget {
  // const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    SearchPage(),
    Center(child: Text('add')),
    FavoriteScreen(),
    Center(child: Text('profile')),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) =>
            setState(() => this._currentIndex = index),
        // indicatorColor: Colors.amber,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "search"),
          NavigationDestination(icon: Icon(Icons.add_a_photo), label: "add"),
          NavigationDestination(icon: Icon(Icons.payment), label: "payment"),
          NavigationDestination(icon: Icon(Icons.person), label: "profile"),
        ],
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
        return FavoriteScreen();
      case 4:
        return Center(child: Text("Payment"));
      default:
        return Container();
    }
  }
}
