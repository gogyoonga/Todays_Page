import 'package:flutter/material.dart';

class OurScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      color: Colors.green[100],
      height: 100,
    ),
      Text('Our에는 다이어리가 떠요'),
      Container(
        color: Colors.amber[100],
        height: 100,
      ),
    ],
    );
  }
  }