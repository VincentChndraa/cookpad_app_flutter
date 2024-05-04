import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/user_list_class.dart';
import 'package:cookpad/widget/button_custom.dart';
import 'package:cookpad/widget/users_card.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({super.key});

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Center(
        child: Scaffold(
          // backgroundColor: Colors.blue.shade100,
          body: ListView(
            children: [
              // Section 1
              Image.asset(
                'assets/images/circle.png.jpeg',
                width: 80,
                height: 80,
              ),
              SizedBox(height: 10),

              // Section 2
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Text(
                        "Perluas jaringanmu",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Ikuti pengguna favoritmu untuk melihat resep terbaru, Cooksnap, dan lebih banyak lagi",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15)
                    ],
                  )),

              // Section 3
              Text(
                "Yuk ikuti pengguna ini!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),

              // Section 4
              Container(
                height: MediaQuery.of(context).size.height / 3,
                // width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(bottom: 15.0),
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: UserData.length,
                  separatorBuilder: (_, __) {
                    return const SizedBox(width: 16);
                  },
                  itemBuilder: (context, index) {
                    return UsersCard(listuser: UserData[index]);
                  },
                ),
              ),
              SizedBox(height: 15),

              // Section 5
              ButtonCustom(
                  onPressed: () {},
                  label: "Lihat Semua",
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
