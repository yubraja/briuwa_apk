import 'package:flutter/material.dart';
import 'plant.dart';

class ShowCase extends StatelessWidget {
   ShowCase({super.key,required this.height,required this.width});
  
  double width ;
  double height ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.3,
      width: width,
      
      child: SingleChildScrollView(
        child: GridView.builder(
          itemCount: plant.length,
          itemBuilder:(context, index){
          Container(
            child:Column(
              children: [
                Image.asset(plant[index].image),
                
                Stack(
                  children: [
                    Text(plant[index].name),
    
                  ],
                )
              ],
            ),
          );
    
          
        },gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),),
      ),
    );
  }
}