// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          for (int i = 1; i < 20;i++)
            Container(
              margin: EdgeInsets.only(top: 15, right: 12, left: 5),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Color(0xFF30314D),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(i.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white)),
                  SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "musicPage");
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Imagine Dragons - Believer',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.white)),
                          Row(children: [
                            Text('Bass',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white.withOpacity(0.8))),
                            SizedBox(
                              width: 5,
                            ),
                            Text('-',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontSize: 25)),
                            SizedBox(
                              width: 5,
                            ),
                            Text('04:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.6))),
                          ]),
                        ]),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 25,
                      color: Color(0xFF31314F),
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
