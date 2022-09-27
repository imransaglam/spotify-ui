import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GoodMorning extends StatefulWidget {
  const GoodMorning({super.key});

  @override
  State<GoodMorning> createState() => _GoodMorningState();
}

class _GoodMorningState extends State<GoodMorning> {
  List<String> musiclist = [
    "assets/discover.png",
    "assets/pinkimage.png",
  ];
  List<String> subtitle = [
    "30 Fresh music for every week",
    "New songs every friday",
  ];
  List<String> mix = [
    "assets/hiphop.png",
    "assets/moody.png",
    "assets/house.png",
  ];
  List<String> mixsubtitle = [
    "Hip Hop Mix",
    "Moody Mix",
    "House Mix",
  ];
  List<String> description = [
    "Juice Wrld,Drake,Kendrick lamar and more...",
    "Joji,The Kid LAROI,Tale McRate and more...",
    "Martin Gamix,The Chainsmoker and more...",
  ];
  List<String> artists = [
    "assets/kid.png",
    "assets/taylor.png",
    "assets/post.png",
  ];
  List<String> names = [
    "The Kid LAROI",
    "Taylor Swift",
    "Post Molone",
  ];
  List<String> colors = [
    "assets/pink.png",
    "assets/yellow.png",
    "assets/green1.png",
  ];
  List<String> renkler = [
    "assets/pinkk.png",
    "assets/yelloww.png",
    "assets/greenn.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.more_vert_outlined,
                            color: Colors.white, size: 24)),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    children: [
                      ImageIcon(
                          color: Color(0xff1ed760),
                          AssetImage("assets/light.png")),
                      SizedBox(width: 10),
                      Text(
                        "Weekly ",
                        style: TextStyle(
                            color: Color(0xff1ed760),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Music",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  padding: EdgeInsets.only(left: 30),
                  child: ListView.builder(
                      itemCount: musiclist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10, bottom: 10),
                              width: 230,
                              height: 113,
                              child: Image.asset(musiclist[index]),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Text(
                              subtitle[index],
                              style: TextStyle(
                                  color: Color(0xffdadada),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        );
                      })),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(children: [
                    Text(
                      "Your Top Mixes",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ]),
                ),
                Container(
                  height: 215,
                  child: ListView.builder(
                      itemCount: mix.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(mix[index]),
                                  Positioned(
                                      top: 60,
                                      child: Image.asset(colors[index])),
                                  Positioned(
                                      bottom: 0,
                                      child: Image.asset(renkler[index])),
                                ],
                              ),
                              Text(
                                mixsubtitle[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                description[index],
                                style: TextStyle(
                                    color: Color(0xffDADADA),
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff0E0E0F),
                              borderRadius: BorderRadius.circular(15)),
                        );
                      })),
                ),
                Text(
                  "Suggested artists",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 180,
                  child: ListView.builder(
                      itemCount: artists.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          height: 195,
                          width: 155,
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(artists[index]),
                                margin: EdgeInsets.only(top: 10),
                              ),
                              SizedBox(height: 10),
                              Text(names[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14)),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff0E0E0F),
                              borderRadius: BorderRadius.circular(15)),
                        );
                      })),
                ),
              ],
            )),
      ),
    );
  }
}
