// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/MusicList.dart';
import '../widgets/PlayList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF303151).withOpacity(0.4),
              Color(0xFF303151).withOpacity(0.9)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.only(top: 20, left: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          size: 30,
                          color: Color(0xFF899CCF),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_vert,
                          size: 30,
                          color: Color(0xFF899CCF),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text('Hello Sir!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          letterSpacing: 1,
                          color: Colors.white.withOpacity(0.9))),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text('What you want to hear Sir?',
                      style: TextStyle(
                          fontSize: 16, color: Colors.white.withOpacity(0.5))),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 20, bottom: 20),
                  child: Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Color(0xFF31314F),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          height: 50,
                          width: 200,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Search the music',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(fontSize: 18),
                  indicator: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 3,
                    color: Color(0xFF899CCF),
                  ))),
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      text: 'Musicsss',
                    ),
                    Tab(
                      text: 'Playlists',
                    ),
                    Tab(
                      text: 'Favourites',
                    ),
                    Tab(
                      text: 'Trending',
                    ),
                    Tab(
                      text: 'Collections',
                    ),
                    Tab(
                      text: 'New',
                    ),
                  ],
                ),
                Flexible(
                    flex: 1,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: TabBarView(children: [
                      MusicList(),
                      PlayList(),
                      MusicList(),
                      MusicList(),
                      MusicList(),
                      MusicList(),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Container(
//   decoration: BoxDecoration(
//       gradient: LinearGradient(
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//         colors: [
//     Color(0xFF303151).withOpacity(0.4),
//     Color(0xFF303151).withOpacity(0.9)
//   ])),
//   child:
//   Scaffold(backgroundColor: Colors.transparent
// );
