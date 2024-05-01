import 'package:cookpad/widget/category_card.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            //baris 1
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  CategoryCard(
                      title: 'Ayam',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Telur',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: "Kentang",
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Bakso',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Buncis',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Wortel',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Tahu',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Tempe',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Cumi',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Daging Sapi',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Jagung',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Ikan',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Mie Telur',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Udang',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Cabe',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                  CategoryCard(
                      title: 'Selada',
                      image: AssetImage('assets/images/daging_ayam.jpg')),
                ],
              ),
            ),

            //baris 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.circle,
                  size: 100,
                ),
                Text("TI-A Pagi")
              ],
            ),

            //baris 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                    'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg',
                    width: 100),
                Expanded(
                  child: Image.network(
                      'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg'),
                )
              ],
            ),

            //baris 4
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Image.network(
                    'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg',
                    width: 120,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Makan sate 50 porsi gratis 20 porsi lagi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Karena ditolak mantan")
                      ],
                    ),
                  ),
                  Icon(
                    Icons.heart_broken,
                    weight: 80,
                    color: Colors.red,
                  )
                ],
              ),
            ), //baris 1
            Row(
              children: [
                // item ke 1 bungkus dengan column
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: 150,
                  child: Container(
                      height: 500,
                      width: 500,
                      color: Colors.grey,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("text1"),
                          Icon(Icons.people),
                        ],
                      )),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.red,
                      width: 3,
                    ),
                  ),
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(right: 20),
                  child: Text("text2"),
                ),
                Text("TI-A"),

                Column(
                  children: [
                    Text("textA"),
                    Text("text3"),
                  ],
                ),
              ],
            ),

            //baris 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.circle,
                  size: 100,
                ),
                Text("TI-A Pagi")
              ],
            ),

            //baris 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                    'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg',
                    width: 100),
                Expanded(
                  child: Image.network(
                      'https://media.neliti.com/media/organisations/logo-211-stmik-stie-mikroskil.jpeg'),
                )
              ],
            ),

            //baris 4
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Image.network(
                    'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/07/14053934/Mudah-Dibuat-di-Rumah-Ini-Resep-Sate-Ayam-Bumbu-Kacang-yang-Lezat-.jpg',
                    width: 120,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Makan sate 50 porsi gratis 20 porsi lagi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("Karena ditolak mantan")
                      ],
                    ),
                  ),
                  Icon(
                    Icons.heart_broken,
                    weight: 80,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        )
        // appBar: AppBar(
        //   title: Text("Search"),
        // ),
        // // body: Padding(
        // //   padding: const EdgeInsets.all(15.0),
        // //   child: Column(
        // //     children: [
        // //       // app search bar
        // //       Container(
        // //         height: 55,
        // //         child: TextField(
        // //           decoration: InputDecoration(
        // //             // contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        // //             hintText: "Search",
        // //             prefixIcon: Icon(Icons.search),
        // //             border: OutlineInputBorder(),
        // //           ),
        // //         ),
        // //       ),
        // //     ],
        // //   ),
        // // ),
        // body: ListView(
        //   physics: BouncingScrollPhysics(),
        //   children: [
        //     // Section 1 - Category
        //     Container(
        //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //       width: MediaQuery.of(context).size.width,
        //       height: 245,
        //       child: Wrap(
        //         spacing: 16,
        //         runSpacing: 16,
        //         children: [
        //           CategoryCard(
        //               title: 'Ayam',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Telur',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: "Kentang",
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Bakso',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Buncis',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Wortel',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Tahu',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Tempe',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Cumi',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Daging Sapi',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Jagung',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Ikan',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Mie Telur',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Udang',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Cabe',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //           CategoryCard(
        //               title: 'Selada',
        //               image: AssetImage('assets/images/daging_ayam.jpg')),
        //         ],
        //       ),
        //     ),
        //     // baris ke dua
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Icon(
        //           Icons.circle,
        //           size: 100,
        //         ),
        //         Text("TI-A Pagi")
        //       ],
        //     ),
        //   ],
        // ),
        );
  }
}
