import 'package:cookpad/page/search_page.dart';
import 'package:cookpad/widget/textfield_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int index = 0;
  final screens = [
    Center(child: Text('Home')),
    SearchPage(),
    Center(child: Text('add')),
    Center(child: Text('payemnt')),
    Center(child: Text('profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset(
              'assets/images/cookpad_logo.png',
              width: 10,
              height: 10,
            ),
          ),
          title: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.notifications),
                tooltip: "Notifications",
                onPressed: () {},
              ),
            )
          ],
          bottom: TabBar(
            indicatorColor: Color.fromRGBO(241, 158, 75, 1),
            indicatorWeight: 4,
            tabs: [
              Tab(text: "Mengikuti"),
              Tab(text: "Inspirasi"),
            ],
          ),
        ),
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
      ),
    );
  }
}
