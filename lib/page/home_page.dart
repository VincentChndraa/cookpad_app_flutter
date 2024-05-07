import 'package:cookpad/page/detail_page.dart';
import 'package:cookpad/recipe_detail_class.dart';
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
  List<Resep> resep = dataRecipe;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
              onTap: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.chat_bubble_rounded),
                tooltip: "Activities",
                onPressed: () {},
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
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

class MySearchDelegate extends SearchDelegate {
  List<Resep> searchResults = dataRecipe;
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Resep> suggestions = searchResults.where((searchResult) {
      final result = searchResult.judul.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 2),
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          tileColor: Colors.white,
          leading: Image.asset(
            suggestion.image,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
          title: Text(suggestion.judul),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailResep(resep: suggestion),
              ),
            );
          },
        );
      },
    );
  }
}
