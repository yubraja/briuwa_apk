 import 'package:flutter/material.dart';
 
const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);//we can reuse the same css context 
const List<Widget> widgetOptions = <Widget>[
    Text(
      ' Two Leave',
      style: optionStyle,
    ),
    Text(
      ' Search',
      style: optionStyle,
    ),
    Text(
      ' Heart',
      style: optionStyle,
    ),

    Text(
      ' Cart'
    ),
    Text('Index 4: Settings',)
  ];
