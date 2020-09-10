import 'package:flutter/material.dart';

class Video extends StatelessWidget {
   String title;
  Video({this.title});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          height: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.teal,
              image: DecorationImage(
                  image: NetworkImage(
                      title),
                  fit: BoxFit.fill)),
        ),
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 23, top: 30),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.remove_red_eye,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    '7.5 M',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.only(top: 230, left: 350),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                '19:20',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
