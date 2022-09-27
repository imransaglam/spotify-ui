import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  double _currentSliderValue = 10;
  ScrollController controller = ScrollController(initialScrollOffset: 280 * 1);
  List<String> images = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.png",
  ];
  List<String> songs = [
    "STAY",
    "First Class",
    "Wishing Well",
  ];
  List<String> artists = [
    "The Kid LAROI,Justin Bieber",
    "Jack Harlow",
    "Juice WLRD",
  ];
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
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "Today's Top Hits",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 380,
                  width: double.infinity,
                  child: ListView.builder(
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 290,
                          width: 290,
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                images[index],
                                height: 290,
                                width: 290,
                              ),
                              Text(
                                songs[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                artists[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      }))),
              Column(
                children: [
                  SizedBox(
                    width: 800.0,
                    height: 70,
                    child: Column(
                      children: [
                        Slider(
                          value: _currentSliderValue,
                          activeColor: Colors.green,
                          inactiveColor: Colors.white,
                          thumbColor: Colors.white,
                          max: 100,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "0.22",
                                style: TextStyle(
                                    color: Color(0xffb3b3b3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "2.53",
                                style: TextStyle(
                                    color: Color(0xffb3b3b3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/shuffle.png")),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/union.png")),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/pause.png")),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/union1.png")),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/repeat.png")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/bluetooth.png")),
                      Text("Airpods Pro",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5),
                          ))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 300,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xff0e0e0f),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_rounded,
                                color: Colors.white, size: 26)),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/mic1.png")),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/playline.png")),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/devices.png")),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
