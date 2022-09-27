import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyflutter/goodmorning.dart';
import 'package:spotifyflutter/library.dart';
import 'package:spotifyflutter/searching.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            Pages();
          },
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  Pages(); 
                },
                icon: Image.asset(
                  "assets/home.png",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  Pages();
                },
                icon: Image.asset(
                  "assets/search.png",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  Pages();
                },
                icon: Image.asset(
                  "assets/threeline.png",
                ),
              ),
              label: "",
            ),
          ]),
    );
  }

  Widget Pages() {
    switch (_currentIndex) {
      case 0:
        return GoodMorning();
        break;
      case 1:
        return searching();
        break;
      case 2:
        return Library();
        break;
      default:
        return Container();
    }
  }
}