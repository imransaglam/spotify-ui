import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyflutter/start.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.black,
      body:Center(
        child: GestureDetector(
           onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Start(),
                    ),
                  );
                },
          child: Image.asset("assets/iconspotify.png")),
      )
    );
  }
}