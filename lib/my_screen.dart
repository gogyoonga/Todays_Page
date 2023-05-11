import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      color: Colors.green[700],
      height: 100,
    ),
      Text('My에는 다이어리가 떠요'),
      Container(
        color: Colors.amber[300],
        height: 100,
      ),
    ],
    );
  }}