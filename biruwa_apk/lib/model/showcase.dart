import 'package:flutter/material.dart';
import 'plant.dart';

class ShowCase extends StatelessWidget {
   ShowCase({super.key,required this.height,required this.width});
  
  double width ;
  double height ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.25,
      width: width*0.5,
      
      child: SingleChildScrollView(
        child: GridView.builder(
          itemCount: plant.length,
          itemBuilder:(context, index){
          Column(
            children: [
              Image.asset(plant[index].image),
              
              Stack(
                children: [
                  Text(plant[index].name),
    
                ],
              )
            ],
          );
    
          
        },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),),
      ),
    );
  }
}