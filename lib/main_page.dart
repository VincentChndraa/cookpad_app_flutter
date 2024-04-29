import 'package:cookpad/page/home_page.dart';
import 'package:cookpad/page/search_page.dart';
import 'package:cookpad/widget/textfield_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;
  final screens = [
    HomeScreen(),
    SearchPage(),
    Center(child: Text('add')),
    Center(child: Text('payemnt')),
    Center(child: Text('profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
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
    ;
  }
}
