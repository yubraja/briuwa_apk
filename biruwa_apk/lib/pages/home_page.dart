import 'package:flutter/material.dart';

import 'package:biruwa_apk/constant.dart';
/// Flutter code sample for [BottomNavigationBar].


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePage
    ();
}

class _HomePage
    extends State<HomePage> {
  int _selectedIndex = 0;
 
 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child:widgetOptions[_selectedIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[

          BottomNavigationBarItem(icon:Image.asset('assets/two_leave.jpg', height: 40,),label: ' '),


           BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: ' ',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ' ',
          ),
         
          
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            label: ' ',
          ),
         
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}












