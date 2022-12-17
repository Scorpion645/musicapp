// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF303152).withOpacity(0.6),
            Color(0xFF303152).withOpacity(0.9),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.back,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.more_vert,
                        color: Color(0xFF899CCF),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/background.jpg',
                  width: 250,
                  height: 260,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text('Imagine Dragons',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white.withOpacity(0.9))),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Singer Name',
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white.withOpacity(0.8)))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 170,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Play All',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xFF30314D))),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xFF30314D),
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                   InkWell(
                    onTap: () {},
                    child: Container(
                      width: 170,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFF30314D),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Shuffle',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                  color: Colors.white)),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.shuffle,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              for (int i = 1; i < 20;i++)
            Container(
              margin: EdgeInsets.only(top: 15, right: 15, left: 15),
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
                      // Navigator.pushNamed(context, "musicPage");
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
            ),
            ],
          ),
        )),
      ),
    );
  }
}
