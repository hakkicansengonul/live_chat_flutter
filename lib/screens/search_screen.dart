import 'package:flutter/material.dart';
import 'package:live_chat_flutter/Animation/FadeAnimation.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Colors.orange,
            Colors.grey,
            Colors.deepPurple,
            Colors.deepPurpleAccent,
            Colors.orange,
            Colors.grey,
            Colors.white,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.orange,
                  ),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 32.0),
                          borderRadius: BorderRadius.circular(25.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 32.0),
                          borderRadius: BorderRadius.circular(25.0)))),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 700.0,
              width: double.infinity,
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  FadeAnimation(
                    1.7,
                    Pagee(
                        "https://media.giphy.com/media/blSTtZehjAZ8I/source.gif",
                        "https://cdn.pixabay.com/photo/2014/07/31/23/49/guitarist-407212_1280.jpg",
                        "Colin"),
                  ),
                  FadeAnimation(
                    1.8,
                    Pagee(
                        "https://media.giphy.com/media/wAxlCmeX1ri1y/source.gif",
                        "https://cdn.pixabay.com/photo/2015/09/18/11/46/man-945482_1280.jpg",
                        "Martin"),
                  ),
                  FadeAnimation(
                    1.9,
                    Pagee(
                        "https://media.giphy.com/media/Wi7QlqrOHYJJm/source.gif",
                        "https://cdn.pixabay.com/photo/2017/11/06/13/45/cap-2923682_1280.jpg",
                        "Richard"),
                  ),
                  FadeAnimation(
                    2.0,
                    Pagee(
                        "https://media.giphy.com/media/l2JdXy8xasypvE0Ni/source.gif",
                        "https://cdn.pixabay.com/photo/2016/01/19/17/48/woman-1149911_1280.jpg",
                        "Linda"),
                  ),
                  FadeAnimation(
                    2.1,
                    Pagee(
                        "https://media.giphy.com/media/3o7528Sz7yobZch0nm/source.gif",
                        "https://cdn.pixabay.com/photo/2017/03/17/04/07/beautiful-2150881_1280.jpg",
                        "Margaret"),
                  ),
                  FadeAnimation(
                    2.3,
                    Pagee(
                        "https://media.giphy.com/media/9pcASxfqgNa5G/source.gif",
                        "https://cdn.pixabay.com/photo/2016/03/23/08/34/woman-1274361_1280.jpg",
                        "Sarah"),
                  ),
                  FadeAnimation(
                    2.4,
                    Pagee(
                        "https://media.giphy.com/media/m8crpzTJFRDPhqqhXJ/source.gif",
                        "https://cdn.pixabay.com/photo/2016/01/19/18/04/man-1150058_1280.jpg",
                        "Paul"),
                  ),
                  FadeAnimation(
                    2.5,
                    Pagee(
                        "https://media.giphy.com/media/3JUh2lzx0kxOJyMy23/source.gif",
                        "https://cdn.pixabay.com/photo/2016/03/27/17/40/black-and-white-1283231_1280.jpg",
                        "George"),
                  ),
                  FadeAnimation(
                    2.6,
                    Pagee(
                        "https://media.giphy.com/media/9DVn6JlIh2Bhe/source.gif",
                        "https://cdn.pixabay.com/photo/2015/03/03/18/58/woman-657753_1280.jpg",
                        "Sarah"),
                  ),
                  FadeAnimation(
                    2.7,
                    Pagee(
                        "https://media.giphy.com/media/amskMeldaPSiA/source.gif",
                        "https://cdn.pixabay.com/photo/2018/08/04/20/48/woman-3584435_1280.jpg",
                        "Sarah"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Pagee(String imgurl, String profileImg, String profileName) {
  return Container(
    //color: Colors.red,
    height: 150.0,
    width: 150.0,
    child: Stack(
      children: [
        Container(
          //padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: NetworkImage(imgurl), fit: BoxFit.cover)),

          //color: Colors.teal[600],
        ),
        Positioned(
          left: 0.0,
          bottom: 0.0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.0)),
            height: 50.0,
            width: 120.0,
            child: Row(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(profileImg), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  profileName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
