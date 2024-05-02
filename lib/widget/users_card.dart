import 'package:cookpad/widget/button_custom.dart';
import 'package:flutter/material.dart';

class UsersCard extends StatefulWidget {
  const UsersCard({Key? key});

  @override
  State<UsersCard> createState() => _UsersCardState();
}

class _UsersCardState extends State<UsersCard> {
  List<Map<String, dynamic>> myList = [
    {
      "name": "dLinschiouZ",
      "username": "@dLinschiouZ",
      "jumlah_resep": "53 resep",
      "jumlah_cooksnap": "30 cooksnap",
      "resep_makanan": ["Kulit risoles", "Kulit risoles", "Kulit risoles"],
    },
    {
      "name": "Feyra Yuniar",
      "username": "@cook_15373316",
      "jumlah_resep": "4 resep",
      "jumlah_cooksnap": "149 cooksnap",
      "resep_makanan": [
        "Mie jagung goreng",
        "Tauco Puyuh Campur",
        "Donat simpel no mixer"
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 400,
      height: 260,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: myList.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> userData = myList[index];
          List myRecipes = userData['resep_makanan'];
          return Card.outlined(
            margin: EdgeInsets.all(4),
            // color: Colors.blue,
            child: Container(
              width: MediaQuery.of(context).size.width - 2 * (20 + 15 + 2 * 10),
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userData['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            userData['username'],
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Icon(
                                Icons.kitchen_outlined,
                                size: 15,
                              ),
                              SizedBox(width: 2),
                              Text(
                                userData['jumlah_resep'],
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(width: 2),
                              Icon(Icons.snapchat_outlined, size: 15),
                              SizedBox(width: 2),
                              Text(
                                userData['jumlah_cooksnap'],
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                  // Row ke 2
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: myRecipes.map((recipeTitle) {
                        return Card.outlined(
                          elevation: 10,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 75,
                                child: Image.asset(
                                  'assets/images/buncis.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                child: Text(
                                  recipeTitle,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  // Row ke 3
                  ButtonCustom(
                    onPressed: () {},
                    label: "Ikuti",
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 5);
        },
      ),
    );
  }
}
