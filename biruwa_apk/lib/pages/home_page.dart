import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  Widget build(BuildContext context)
  {

    return Scaffold(

      
body: Column(children: [

  BottomNavigationBar(items: [
    BottomNavigationBarItem(icon:Image.asset('../../assets/two_leave.jpg'),label: ' '),
    BottomNavigationBarItem(icon: Icon(Icons.add),label: '  '),
  ],
  )

  
]),

    );
  }

}