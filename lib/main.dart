import 'package:flutter/material.dart';

import 'pages/HomePage.dart';
import 'pages/MusicPage.dart';
import 'pages/PlayListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "PlayListPage": (context) => PlayListPage(),
        "musicPage":(context) => MusicPage(),
        },
    );
  }
}

