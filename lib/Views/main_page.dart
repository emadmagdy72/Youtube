import 'package:flutter/material.dart';
import 'package:youtubeprojectd/Views/home.dart';
import 'package:youtubeprojectd/Views/subscription.dart';
import 'package:youtubeprojectd/Views/trending.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;
  var pages = [HomePage(),Trending(),Subscriptions()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            currentIndex: currentIndex,
            elevation: 50,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.tv),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.trending_up),
                title: Text('Trending'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions),
                title: Text('Subscriptions'),
              ),
            ]),
      ),
    );
  }
}
