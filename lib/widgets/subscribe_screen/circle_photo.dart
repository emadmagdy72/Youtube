import 'package:flutter/material.dart';
class CirclePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.grey,
        child: CircleAvatar(
          backgroundImage: ExactAssetImage(
              'images/IMG20200903172945-01.jpeg'
          ),
          radius: 48,
          child: Padding(
            padding: const EdgeInsets.only(top:65,left: 80),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                border: Border.all(color: Colors.white,)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
