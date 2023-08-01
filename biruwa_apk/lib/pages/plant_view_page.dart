import 'package:flutter/material.dart';

class PlantViewPage extends StatelessWidget {
  const PlantViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
        children: [
          Container(child: Image.asset('assets/two_leave.jpg',height: 100,width: 500,fit: BoxFit.cover,),height: 100,width: double.infinity,),


        ],
      ),
    );
  }
}