import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_chat_flutter/Animation/FadeAnimation.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100.0,
                ),
                FadeAnimation(
                  1.2,
                  Text(
                    "Chat",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FadeAnimation(
                        1.3,
                        NewProfile(
                            "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373_1280.jpg",
                            "Your",
                            "Story"),
                      ),
                      FadeAnimation(
                        1.4,
                        NewProfileLive(
                            "https://cdn.pixabay.com/photo/2016/11/29/03/36/beautiful-1867093_1280.jpg",
                            "Elizabeth",
                            "Karen"),
                      ),
                      FadeAnimation(
                        1.5,
                        NewProfile(
                            "https://cdn.pixabay.com/photo/2015/09/18/11/38/man-945438_1280.jpg",
                            "Mark",
                            "Steven"),
                      ),
                      FadeAnimation(
                        1.6,
                        NewProfile(
                            "https://cdn.pixabay.com/photo/2016/03/23/04/01/woman-1274056_1280.jpg",
                            "Maria",
                            "Eklund"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                FadeAnimation(
                  1.7,
                  Text(
                    "Recent Conversations",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
                Container(
                  height: 500.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      FadeAnimation(
                        1.8,
                        RecentProfileLive(
                            "https://cdn.pixabay.com/photo/2018/03/12/20/57/woman-3220835_1280.jpg",
                            "Phawta Tuntayakul",
                            "Great! I'll join you tomorrow...",
                            Colors.orange,
                            3),
                      ),
                      FadeAnimation(
                        1.9,
                        RecentProfileLive(
                            "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_1280.jpg",
                            "Maria Illescas",
                            "Can you please send detail...",
                            Colors.orange,
                            1),
                      ),
                      FadeAnimation(
                        2.0,
                        RecentProfileLive(
                            "https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761_1280.jpg",
                            "Phawta Tuntayakul",
                            "Great! I'll join you tomorrow...",
                            Colors.white,
                            3),
                      ),
                      FadeAnimation(
                        2.1,
                        RecentProfileLive(
                            "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
                            "Phawta Tuntayakul",
                            "Great! I'll join you tomorrow...",
                            Colors.white,
                            3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget RecentProfileLive(imgUrl, title, subtitle, livecolor, int message) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    child: Container(
      //color: Colors.blue,
      height: 100.0,
      width: 350.0,
      child: Row(
        children: [
          Container(
            height: 100.0,
            width: 90.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover),
              shape: BoxShape.circle,
              border: Border.all(color: livecolor, width: 3.0),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0),
              ),
              Text(
                "10m",
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: livecolor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "$message",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget NewProfile(imgUrl, title, subtitle) {
  return Padding(
    padding: const EdgeInsets.only(
      right: 10.0,
    ),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.0),
          image:
              DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover)),
      alignment: Alignment.center,
      width: 150.0,
      height: 200.0,
      child: Stack(
        children: [
          Positioned(
              bottom: 10.0,
              left: 15.0,
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                ],
              )),
          Positioned(
            right: 10.0,
            top: 10.0,
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget NewProfileLive(imgUrl, title, subtitle) {
  return Padding(
    padding: const EdgeInsets.only(
      right: 10.0,
    ),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.0),
          image:
              DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover)),
      alignment: Alignment.center,
      width: 150.0,
      height: 200.0,
      child: Stack(
        children: [
          Positioned(
              bottom: 10.0,
              left: 15.0,
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                ],
              )),
          Positioned(
            right: 10.0,
            top: 10.0,
            child: Container(
              width: 50.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                  child: Text(
                "Live",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
        ],
      ),
    ),
  );
}
