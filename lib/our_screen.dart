import 'package:flutter/material.dart';

class OurScreen extends StatefulWidget {
  @override
  _OurScreenState createState() => _OurScreenState();
}

class _OurScreenState extends State<OurScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: '검색어를 입력하세요', // 힌트 텍스트
            prefixIcon: Icon(Icons.search), // 검색 아이콘
            border: OutlineInputBorder(), // 테두리 스타일
          ),
          onChanged: (value) {
            setState(() {
              searchText = value;
            });

            // 검색어 변경에 따른 로직 수행
            // 예: 검색 결과 업데이트, 필터링 등
          },
        ),
        SizedBox(height: 16.0), // 추가적인 공간

        // 다른 위젯들 추가 가능
        Container(
          color: Colors.amber[100],
          height: 100,


    ),

        Text('여기에는 무언가를'),
        Text('위젯 2'),
        Text('위젯 3'),
        IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
        IconButton(onPressed: (){}, icon: Icon(Icons.local_fire_department_outlined)),
        Image.asset('images/clover.png', height: 20,),



      ],
    );
  }
}
