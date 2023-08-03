import 'package:flutter/material.dart';

class ShowCase extends StatelessWidget {
  const ShowCase({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(itemBuilder:(context, index){
        
      },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),),
    );
  }
}