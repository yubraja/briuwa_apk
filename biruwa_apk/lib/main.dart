import 'package:flutter/material.dart';
import './pages/home_page.dart';


void main(){

  runApp(MyApp());


}



class MyApp extends StatelessWidget{
  final ThemeData customLightTheme = ThemeData(
  primaryColor: Color.fromARGB(255, 168,190,198),
  // Define more colors and styles for light theme
);

final ThemeData customDarkTheme = ThemeData(
  primaryColor: Colors.purple,
  // Define more colors and styles for dark theme
);

  Widget build(BuildContext context)
  {
    return MaterialApp(

      title: "Briksha",
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      
      theme: customLightTheme,
      themeMode: ThemeMode.system,
      darkTheme: customDarkTheme,
      
       
      
    );
  }
}