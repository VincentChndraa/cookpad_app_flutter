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
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            height: 55,
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                hintText: "Ketik bahan-bahan...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          //baris 1
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            height: 800,
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                CategoryCard(
                    title: 'Ayam',
                    image: AssetImage('assets/images/masak_ayam.jpg')),
                CategoryCard(
                    title: 'Telur',
                    image: AssetImage('assets/images/masak_telur.jpg')),
                CategoryCard(
                    title: "Kentang",
                    image: AssetImage('assets/images/masak_kentang.jpeg')),
                CategoryCard(
                    title: 'Bakso',
                    image: AssetImage('assets/images/bakso.jpeg')),
                CategoryCard(
                    title: 'Buncis',
                    image: AssetImage('assets/images/buncis.jpg')),
                CategoryCard(
                    title: 'Wortel',
                    image: AssetImage('assets/images/masak_wortel.jpeg')),
                CategoryCard(
                    title: 'Tahu',
                    image: AssetImage('assets/images/masak_tahu.jpeg')),
                CategoryCard(
                    title: 'Tempe',
                    image: AssetImage('assets/images/masak_tempe.jpeg')),
                CategoryCard(
                    title: 'Cumi',
                    image: AssetImage('assets/images/masak_cumi.jpg')),
                CategoryCard(
                    title: 'Daging Sapi',
                    image: AssetImage('assets/images/masak_sapi.jpg')),
                CategoryCard(
                    title: 'Jagung',
                    image: AssetImage('assets/images/masak_jagung.jpg')),
                CategoryCard(
                    title: 'Ikan',
                    image: AssetImage('assets/images/masak_ikan.jpeg')),
                CategoryCard(
                    title: 'Mie Telur',
                    image: AssetImage('assets/images/mie_telur.jpg')),
                CategoryCard(
                    title: 'Udang',
                    image: AssetImage('assets/images/masak_udang.jpg')),
                CategoryCard(
                    title: 'Cabe',
                    image: AssetImage('assets/images/masak_Cabe.jpg')),
                CategoryCard(
                    title: 'Selada',
                    image: AssetImage('assets/images/selada.jpg')),
              ],
            ),
          ),

          //baris 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Riwayat",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          //baris 3
        ],
      ),
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
