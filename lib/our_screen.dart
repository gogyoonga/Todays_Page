import 'package:flutter/material.dart';

class OurScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      color: Colors.green[100],
      height: 130,
      child: Row(children: [Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
        Container(
        width: 200,
          height: 100,
          color: Colors.white,
          child: Text('꼬모냥냥\n 발자국: 500 \n클로버: 30'),
      )],
      ),
    ),
      Text('다이어리가 떠요'),
      Container(
        width: 320,
        height: 460,
        decoration: BoxDecoration(
          color: Colors.amber[100],
          borderRadius: const BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(10)
          ),
          image: const DecorationImage(
            image: AssetImage(
              ''
            )
          )
        ),

      ),
    ],
    );
  }
  }