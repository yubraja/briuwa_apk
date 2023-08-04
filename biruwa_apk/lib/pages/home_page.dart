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
        selectedItemColor: const Color.fromARGB(255, 13, 218, 119),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:' '),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: ' '),
        BottomNavigationBarItem(icon: Icon(Icons.store,),label: ' '),
        BottomNavigationBarItem(icon: Icon(Icons.settings_applications,),label: ' '),







      ],
      onTap: _onTapped,
      currentIndex: _currentIndex,
      
      ),
      body: widgetOptions[_currentIndex],

      
    );
  }
}