import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      color: Colors.green,
    ),
      Text('My에는 다이어리가 떠요'),
      Container(
        color: Colors.amber[200],
        height: 100,
      ),
    ],
    );
  }}