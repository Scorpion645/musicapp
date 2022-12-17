// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i < 20; i++)
            Container(
              margin: EdgeInsets.only(top: 20, right: 20, left: 5),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF30314D),
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "PlayListPage");
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/background.jpg',
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Imagine Dragons',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text('30 Songs',
                            style: TextStyle(
                                // fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.5))),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Colors.white.withOpacity(0.6),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
