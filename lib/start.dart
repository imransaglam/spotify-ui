import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyflutter/login.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/billie.png"), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left:170,bottom:180,
            child: Text(
              "Spotify",
              style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            left:40,bottom:60,
            child: Container(
              margin: EdgeInsets.only(top:10,left:10,right:10),
              width:300,
              height:100,
              child: Text(
                "  A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.",
                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
             left:10,bottom:10,
            child: TextButton(
                    onPressed: () {},
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                      child: Container(
                        width: 345,
                        height:58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31),
                           color: Color(0xff1ed760),
                        ),
                       
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 120),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}