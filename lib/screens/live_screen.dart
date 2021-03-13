import 'package:flutter/material.dart';
import 'package:live_chat_flutter/Animation/FadeAnimation.dart';

class LivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://media.giphy.com/media/irAH9wZyajya4/source.gif"),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 80.0, right: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.0,
                  ),
                  FadeAnimation(
                    1.5,
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 4.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/06/18/18/26/holi-2416686__480.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Container(
                      height: 40.0,
                      width: 140.0,
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FadeAnimation(
                                2,
                                Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                ),
                              ),
                              FadeAnimation(
                                2,
                                Text(
                                  "2.5k",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          FadeAnimation(
                            2,
                            Container(
                              width: 60.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                  child: Text(
                                "LIVE",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 230.0,
              ),
              Container(
                height: 500.0,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    FadeAnimation(
                      4.2,
                      MessageLive(
                        "https://cdn.pixabay.com/photo/2018/03/12/20/57/woman-3220835_1280.jpg",
                        "Phawta Tuntayakul",
                        "Great! I'll join you tomorrow...",
                      ),
                    ),
                    FadeAnimation(
                      5.3,
                      MessageLive(
                        "https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_1280.jpg",
                        "Maria Illescas",
                        "Can you please send detail...",
                      ),
                    ),
                    FadeAnimation(
                      6.4,
                      MessageLive(
                        "https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761_1280.jpg",
                        "Phawta Tuntayakul",
                        "Great! I'll join you tomorrow...",
                      ),
                    ),
                    FadeAnimation(
                      7.5,
                      MessageLive(
                        "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg",
                        "Phawta Tuntayakul",
                        "Great! I'll join you tomorrow...",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget MessageLive(imgUrl, title, subtitle) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 10.0,
    ),
    child: Container(
      //color: Colors.blue,
      height: 90.0,
      width: 300.0,
      child: Row(
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover),
              shape: BoxShape.circle,
              //border: Border.all(color: livecolor, width: 3.0),
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0),
              ),
              Text(
                "10m",
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
