import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeprojectd/widgets/shared_screens/app_bar.dart';
import 'package:youtubeprojectd/widgets/shared_screens/subtitle_video.dart';
import 'package:youtubeprojectd/widgets/shared_screens/video.dart';
import 'package:youtubeprojectd/widgets/subscribe_screen/circle_photo.dart';

class Subscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        customappbar(),
        Expanded(
          child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10,left: 20,right: 20,),
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CirclePhoto(),
                      CirclePhoto(),
                      CirclePhoto(),
                      CirclePhoto(),
                      CirclePhoto(),
                      CirclePhoto()
                    ],
                  ),
                ),
                Video( title: 'https://i.ytimg.com/vi/8mQ-v11SeRM/maxresdefault.jpg',),
                SubtitleVideo(),
                Video( title: 'https://i.ytimg.com/vi/8mQ-v11SeRM/maxresdefault.jpg',),
                SubtitleVideo(),
              ],
            ),
        ),
      ],
    );
  }

}
