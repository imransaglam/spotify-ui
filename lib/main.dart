import 'package:flutter/material.dart';
import 'package:spotifyflutter/bottomnavigationbar.dart';
import 'package:spotifyflutter/category.dart';
import 'package:spotifyflutter/goodmorning.dart';
import 'package:spotifyflutter/library.dart';
import 'package:spotifyflutter/login.dart';
import 'package:spotifyflutter/music.dart';
import 'package:spotifyflutter/searching.dart';
import 'package:spotifyflutter/splash.dart';
import 'package:spotifyflutter/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

