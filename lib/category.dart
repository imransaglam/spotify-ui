import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyflutter/music.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> list = [
    "assets/photo1.png",
    "assets/photo2.png",
    "assets/photo3.png",
    "assets/photo4.png",
  ];
  List<String> songs = [
    "STAY",
    "Whishing Well",
    "First Class",
    "Unstable",
  ];
  List<String> artist = [
    "The Kid LAROI,Justin Bieber",
    "Juice WLRD",
    "Jack Harlow",
    "Justin Bieber,The Kid LAROI",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 430,
                ),
                Container(
                    width: 510,
                    child: Image.asset("assets/theweekend.png",
                        fit: BoxFit.cover)),
                Positioned(
                    left: 10,
                    top: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 24,
                          color: Colors.white,
                        ))),
                Positioned(
                    right: 50,
                    top: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          size: 24,
                          color: Colors.white,
                        ))),
                Positioned(
                    right: 20,
                    top: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_rounded,
                          size: 24,
                          color: Colors.white,
                        ))),
                Positioned(
                    left: 40,
                    bottom: 120,
                    child: Image.asset("assets/today.png")),
                Positioned(
                    left: 40,
                    bottom: 70,
                    child: Image.asset("assets/tophits.png")),
                Positioned(
                    left: 30, bottom: 40, child: Image.asset("assets/fav.png")),
                Positioned(
                    left: 50,
                    bottom: 40,
                    child: Image.asset("assets/like.png")),
                Positioned(
                    left: 170,
                    bottom: 40,
                    child: Image.asset("assets/clock.png")),
                Positioned(
                    left: 190,
                    bottom: 40,
                    child: Image.asset("assets/hours.png")),
                Positioned(
                    left: 330,
                    bottom: 0,
                    child: GestureDetector(child:IconButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Music()),
                        ),
                      );
                    }, icon: Image.asset("assets/play.png",),iconSize: 60, ))),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Text(
                "Featuring",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
                width: double.infinity,
                height: 800,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: list.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 10),
                        height: 120,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              height: 800,
                            ),
                            Container(
                                height: 200.0, child: Image.asset(list[index])),
                            Positioned(
                                left: 50,
                                top: 50,
                                child: Image.asset(index == 2
                                    ? "assets/stop.png"
                                    : "assets/play1.png")),
                            Positioned(
                                left: 110,
                                top: 40,
                                child: Text(
                                  songs[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                            Positioned(
                                left: 110,
                                top: 60,
                                child: Text(
                                  artist[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                )),
                            Positioned(
                                right: 50,
                                top: 30,
                                child: index < 2
                                    ? IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite,
                                          color: Color(0xff1ED760),
                                        ))
                                    : IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ))),
                            Positioned(
                                right: 5,
                                top: 30,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_vert_rounded,
                                      color: Colors.white,
                                    ))),
                          ],
                        ),
                      );
                    }))),
          ],
        ),
      ),
    );
  }
}
