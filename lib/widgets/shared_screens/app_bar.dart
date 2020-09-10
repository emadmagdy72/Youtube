import 'package:flutter/material.dart';

Widget customappbar (){
  return AppBar(
    title: Image.network('https://seeklogo.net/wp-content/uploads/2020/03/YouTube-logo-png-512x512.png',
      height: 180,),
    centerTitle: true,
    leading: Icon(Icons.dehaze),
    actions: <Widget>[
      Icon(Icons.search)
    ],
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    ),
  );
}
