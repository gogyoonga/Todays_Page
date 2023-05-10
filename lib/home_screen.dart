import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      color: Colors.green,
    ),
    Text('home에는 다이어리가 떠요'),
    Container(
      color: Colors.amber[300],
      height: 100,
    ),],
    );


    throw UnimplementedError();
  }

}