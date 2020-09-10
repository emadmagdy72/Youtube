import 'package:flutter/material.dart';
import 'package:youtubeprojectd/Views/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.red,
        primaryColor: Colors.white,
          textTheme: TextTheme(
            display1: TextStyle(color: Colors.red),
            subtitle: TextStyle(color: Colors.grey)
          )
      ),
      debugShowCheckedModeBanner: false,
      title: "youtube",
      home: MainPage(),
    );
  }
}
