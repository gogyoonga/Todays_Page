import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'my_screen.dart';
import 'our_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    OurScreen(),
    HomeScreen(),
    MyScreen(),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedIndex: _selectedIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.groups),
            label: 'Our',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Main',
          ),
          NavigationDestination(
            icon: Icon(Icons.face),
            label: 'My',
          ),
        ],
      ),


      body: pages[_selectedIndex],


    );
  }
}
