import 'package:flutter/material.dart';
import 'file:///E:/Androidprojects/youtube_project/lib/widgets/shared_screens/app_bar.dart';
import 'package:youtubeprojectd/widgets/constant.dart';
import 'file:///E:/Androidprojects/youtube_project/lib/widgets/shared_screens/subtitle_video.dart';
import 'file:///E:/Androidprojects/youtube_project/lib/widgets/shared_screens/video.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget>[
          customappbar(),
         Expanded(
           child: ListView(
             children: <Widget>[
               Container(
                 height: 100,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: <Widget>[
                     GestureDetector(
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Chip(
                           label: Text(
                             'Music',
                             style: listTitle,
                           ),
                           padding: EdgeInsets.all(15),
                           backgroundColor:
                           pageIndex == 0 ? Colors.red : Colors.grey,
                         ),
                       ),
                       onTap: () {
                         setState(() {
                           pageIndex = 0;
                         });
                       },
                     ),
                     GestureDetector(
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Chip(
                           label: Text(
                             'Videos',
                             style: listTitle,
                           ),
                           padding: EdgeInsets.all(15),
                           backgroundColor:
                           pageIndex == 1 ? Colors.red : Colors.grey,
                         ),
                       ),
                       onTap: () {
                         setState(() {
                           pageIndex = 1;
                         });
                       },
                     ),
                     GestureDetector(
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Chip(
                           label: Text(
                             'Games',
                             style: listTitle,
                           ),
                           padding: EdgeInsets.all(15),
                           backgroundColor:
                           pageIndex == 2 ? Colors.red : Colors.grey,
                         ),
                       ),
                       onTap: () {
                         setState(() {
                           pageIndex = 2;
                         });
                       },
                     ),
                     GestureDetector(
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Chip(
                           label: Text(
                             'Pubg',
                             style: listTitle,
                           ),
                           padding: EdgeInsets.all(15),
                           backgroundColor:
                           pageIndex == 3 ? Colors.red : Colors.grey,
                         ),
                       ),
                       onTap: () {
                         setState(() {
                           pageIndex = 3;
                         });
                       },
                     ),
                     GestureDetector(
                       child: Padding(
                         padding: const EdgeInsets.all(15),
                         child: Chip(
                           label: Text(
                             'Comedy',
                             style: listTitle,
                           ),
                           padding: EdgeInsets.all(15),
                           backgroundColor:
                           pageIndex == 4 ? Colors.red : Colors.grey,
                         ),
                       ),
                       onTap: () {
                         setState(() {
                           pageIndex = 4;
                         });
                       },
                     ),
                   ],
                 ),
               ),
               Video( title: 'https://i.ytimg.com/vi/uzEZ-_tfNsM/maxresdefault.jpg',),
               SubtitleVideo(),
               Video(title: 'https://i.ytimg.com/vi/uzEZ-_tfNsM/maxresdefault.jpg',),
               SubtitleVideo(),
             ],
           ),
         )
        ],
      );
  }
}
