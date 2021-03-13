import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:live_chat_flutter/screens/live_screen.dart';
import 'package:live_chat_flutter/screens/message_screen.dart';
import 'package:live_chat_flutter/screens/profile_screen.dart';
import 'package:live_chat_flutter/screens/search_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        color: Colors.orange,
        backgroundColor: _index == 0
            ? Colors.white
            : _index == 1
                ? Colors.white
                : _index == 2
                    ? Colors.deepPurple
                    : Colors.grey,
        buttonBackgroundColor: Colors.white,
        items: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_outlined,
                color: _index == 0 ? Colors.orange : Colors.black,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.message_outlined,
                color: _index == 1 ? Colors.orange : Colors.black,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.live_tv_outlined,
                color: _index == 2 ? Colors.orange : Colors.black,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline,
                color: _index == 3 ? Colors.orange : Colors.black,
              ),
            ],
          ),
        ],
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
      body: _index == 0
          ? SearchPage()
          : _index == 1
              ? MessagePage()
              : _index == 2
                  ? LivePage()
                  : ProfilePage(),
    );
  }
}
