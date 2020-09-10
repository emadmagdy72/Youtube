import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/Androidprojects/youtube_project/lib/widgets/shared_screens/subtitle_video.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtubeprojectd/widgets/trending_screen/card_video.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://i.ytimg.com/vi/uzEZ-_tfNsM/maxresdefault.jpg',
                          ),
                          fit: BoxFit.cover)),
                ),
                Icon(
                  MdiIcons.youtube,
                  color: Colors.red,
                  size: 100,
                ),
              ],
            ),
           Expanded(
             child: ListView(
               children: <Widget>[
                 SizedBox(
                   height: 15,
                 ),
                 SubtitleVideo(),
                 Card(
                   margin: EdgeInsets.only(left: 20, right: 20, top: 12),
                   shadowColor: Colors.black,
                   elevation: 10,
                   shape:
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: <Widget>[
                         videoIcon(MdiIcons.heartCircle, '12.9 k', Colors.red),
                         videoIcon(MdiIcons.thumbUpOutline, '6.8 k', Colors.blue),
                         videoIcon(MdiIcons.thumbDownOutline, '16', Colors.blue),
                         videoIcon(MdiIcons.shareCircle, 'share', Colors.blue),
                         videoIcon(MdiIcons.downloadCircle, 'Download', Colors.blue),
                         videoIcon(MdiIcons.contentSaveAll, 'save', Colors.blue)
                       ],
                     ),
                   ),
                 ),
                 Padding(
                   padding:
                   const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: <Widget>[
                       CircleAvatar(
                         backgroundImage: NetworkImage(
                             'https://yt3.ggpht.com/a/AATXAJz9wE-6k1BuUijaLRSsarjYwOY_GNN_ix2bZYg5-w=s100-c-k-c0xffffffff-no-rj-mo'),
                         radius: 30,
                       ),
                       Icon(
                         MdiIcons.bellCircle,
                         size: 70,
                         color: Colors.grey.shade400,
                       ),
                       Container(
                         width: 200,
                         height: 50,
                         decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Center(
                           child: Text(
                             'subscribe',
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                                 letterSpacing: 4),
                           ),
                         ),
                       ),
                       Icon(
                         Icons.more_vert,
                         size: 60,
                       )
                     ],
                   ),
                 ),
                 Divider(
                   height: 2,
                   color: Colors.grey.shade500,
                   thickness: 2,
                   indent: 35,
                   endIndent: 35,
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text(
                         'Next Video',
                         style: TextStyle(color: Colors.black,
                             fontSize: 24,
                             fontWeight: FontWeight.w400
                         ),
                       ),
                       Text(
                         'Auto Play',
                         style: TextStyle(
                           color: Colors.red,
                           fontSize: 24,
                           fontWeight: FontWeight.bold,
                         ),
                       )
                     ],
                   ),
                 ),
                 VideoCaption(),
                 VideoCaption(),
                 VideoCaption(),
               ],
             ),
           )
          ],
        ),
    );
  }

  Widget videoIcon(IconData icon, String title, Color color) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            icon,
            color: color,
          ),
          onPressed: () {},
          iconSize: 45,
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
        )
      ],
    );
  }
}
