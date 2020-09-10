import 'package:flutter/material.dart';
class SubtitleVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://yt3.ggpht.com/a/AATXAJz9wE-6k1BuUijaLRSsarjYwOY_GNN_ix2bZYg5-w=s100-c-k-c0xffffffff-no-rj-mo'),
        radius: 30,
      ),
      title: Text(
        ' Da7ee7 - الدحيح - Da7ee7 - الدحيح',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: <Widget>[
          Icon(
            Icons.check_circle_outline,
            color: Colors.red,
          ),
          Text(
            '   Da7heh .  3 days ago',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
