import 'package:flutter/material.dart';
import '../constant.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex=0;
  void _onTapped(int index)
  {
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home),label: ' '),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:' '),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ' '),





      ],
      onTap: _onTapped,
      currentIndex: _currentIndex,
      
      ),
      body: widgetOptions[_currentIndex],

      
    );
  }
}