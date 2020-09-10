import 'package:flutter/material.dart';

class VideoCaption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 140,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://i.ytimg.com/vi/DC4v9B0urGg/maxresdefault.jpg'),
                        fit: BoxFit.fill)),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        Text(
                          '7.5 M',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 150),
                child: Container(
                  padding:
                      EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '19:20',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Text(
                  ' Da7ee7 - الدحيح - Da7ee7 - الدحيح - الحلقة 3- ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://yt3.ggpht.com/a/AATXAJz9wE-6k1BuUijaLRSsarjYwOY_GNN_ix2bZYg5-w=s100-c-k-c0xffffffff-no-rj-mo'),
                      radius: 20,
                    ),
                    Text(
                      '   Da7heh .   3 days ago',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
