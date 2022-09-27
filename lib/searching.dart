import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class searching extends StatefulWidget {
  const searching({super.key});

  @override
  State<searching> createState() => _searchingState();
}

class _searchingState extends State<searching> {
  @override
  List<String> images = [
    "assets/impaulsive.png",
    "assets/ted.png",
    "assets/basement.png",
  ];
  List<String> texts = [
    "Impaulsive",
    "Ted Talks Daily",
    "Mom's Basement",
  ];
  List<String> subtexts = [
    "334 ep.",
    "155 ep.",
    "75 ep.",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: (() {}),
                      icon: Icon(Icons.more_vert_outlined,
                          color: Colors.white, size: 24)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 342,
                height: 43,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  cursorColor: Color(0xFF1ED760),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded,
                        size: 16, color: Colors.white),
                    labelText: "Artist,songs,or podcasts",
                    labelStyle: TextStyle(
                        color: Colors.white.withOpacity(0.22),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    alignment: Alignment.center,
                    width: 98,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0e0e0f),
                    ),
                    child: Text(
                      "The Kid LAROI",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    alignment: Alignment.center,
                    width: 69,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0e0e0f),
                    ),
                    child: Text(
                      "Drake",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    alignment: Alignment.center,
                    width: 106,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0e0e0f),
                    ),
                    child: Text(
                      "Justin Bieber",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    alignment: Alignment.center,
                    width: 39,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0e0e0f),
                    ),
                    child: Text(
                      "Joji",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 15),
                    alignment: Alignment.center,
                    width: 106,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0e0e0f),
                    ),
                    child: Text(
                      "Hip Hop",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 15),
                    alignment: Alignment.center,
                    width: 106,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0e0e0f),
                    ),
                    child: Text(
                      "Pop",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 15),
                    alignment: Alignment.center,
                    width: 106,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0e0e0f),
                    ),
                    child: Text(
                      "Top Hits",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  "Podcast's",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                width: 400,
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            padding: EdgeInsets.only(top: 20),
                            width: 155,
                            height: 195,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff0e0e0f)),
                            child: Column(
                              children: [
                                Image.asset(images[index]),
                                Container(
                                    margin: EdgeInsets.only(
                                        top: 5, left: 20, bottom: 5),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      texts[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      subtexts[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          )
                        ],
                      );
                    })),
              ),
              Container(
                  width: 84,
                  height: 21,
                  child: Text(
                    "Browse all",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xffE02FCF),
                          Color(0xff00C188),
                        ])),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Made For You",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xff0A3CEC),
                          Color(0xff4DD4AC),
                        ])),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Charts",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xff0A3CEC),
                          Color(0xffD9DD01),
                        ])),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Discover",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xff0E31AE),
                          Color(0xffDD1010),
                        ])),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "New Release",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
