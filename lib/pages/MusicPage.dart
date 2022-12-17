// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.5),
                Color(0xFF31314F).withOpacity(1),
                Color(0xFF31314F).withOpacity(1),
              ])),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 45, horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Imagine Dragon',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.white.withOpacity(0.9))),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Singer Name',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white.withOpacity(0.8))),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              size: 35,
                              color: Colors.redAccent,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Slider(
                            min: 0,
                            max: 100,
                            onChanged: (double value) {},
                            value: 40,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white54,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('02:10',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.white.withOpacity(0.6))),
                                Text('04:30',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.white.withOpacity(0.6))),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.list,
                            color: Colors.white,
                            size: 32,
                          ),
                          Icon(
                            CupertinoIcons.backward_end_fill,
                            color: Colors.white,
                            size: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            
                            ),
                            child: Icon(
                            Icons.play_arrow,
                            color: Color(0xFF31314F),
                            size: 45,
                          ),
                          ),
                          Icon(
                            CupertinoIcons.forward_end_fill,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.white,
                            size: 32,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
