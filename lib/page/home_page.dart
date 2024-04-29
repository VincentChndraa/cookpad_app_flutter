import 'package:cookpad/tabs/inspirasi_tab.dart';
import 'package:cookpad/tabs/mengikuti_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
          // bottom: TabBar(
          //   indicatorColor: Color.fromRGBO(241, 158, 75, 1),
          //   indicatorWeight: 4,
          //   tabs: [
          //     Tab(text: "Mengikuti"),
          //     Tab(text: "Inspirasi"),
          //   ],
          // ),
        ),
        body: Column(
          children: [
            TabBar(
              indicatorColor: Color.fromRGBO(241, 158, 75, 1),
              indicatorWeight: 4,
              tabs: [
                Tab(text: "Mengikuti"),
                Tab(text: "Inspirasi"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Halaman Mengikuti
                  FirstTab(),
                  // Halaman Inspirasi
                  SecondTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
