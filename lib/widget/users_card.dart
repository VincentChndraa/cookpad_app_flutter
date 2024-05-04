import 'dart:ui';

import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/user_list_class.dart';
import 'package:cookpad/widget/button_custom.dart';
import 'package:cookpad/widget/picture_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersCard extends StatefulWidget {
  final ListUser listuser;

  const UsersCard({
    Key? key,
    required this.listuser,
  }) : super(key: key);

  @override
  State<UsersCard> createState() => _UsersCardState();
}

class _UsersCardState extends State<UsersCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                children: [
                  CircleAvatar(),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.listuser.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        widget.listuser.username,
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
                            widget.listuser.jumlah_resep,
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(width: 2),
                          Icon(Icons.snapchat_outlined, size: 15),
                          SizedBox(width: 2),
                          Text(
                            widget.listuser.jumlah_cooksnap,
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 90, // Set maximum height to 100
                      maxWidth: 90, // Set maximum width to 100
                    ),
                    child: PictureCard(
                      imageUrl: widget.listuser.gambar_makanan[0],
                      title: widget.listuser.nama_makanan[0],
                    ),
                  ),
                  const SizedBox(width: 10),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 90, // Set maximum height to 130
                      maxWidth: 90, // Set maximum width to 100
                    ),
                    child: PictureCard(
                      imageUrl: widget.listuser.gambar_makanan[1],
                      title: widget.listuser.nama_makanan[1],
                    ),
                  ),
                  const SizedBox(width: 10),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 90, // Set maximum height to 100
                      maxWidth: 90, // Set maximum width to 100
                    ),
                    child: PictureCard(
                      imageUrl: widget.listuser.gambar_makanan[2],
                      title: widget.listuser.nama_makanan[2],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.73,
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Ikuti"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade700,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
