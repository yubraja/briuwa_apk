import 'package:flutter/material.dart';

class PlantViewPage extends StatefulWidget {
   PlantViewPage({super.key});

  @override
  State<PlantViewPage> createState() => _PlantViewPageState();
}

class _PlantViewPageState extends State<PlantViewPage> {

  int selectedIndex=0;
  @override


  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
        children: [
          Container(child: Image.asset('assets/girl.png',width: 500,fit: BoxFit.cover,),width: double.infinity,),


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
               GestureDetector(onTap: (){
                setState(() {
                  selectedIndex=0;
                });
               }, child:Container(
                alignment: Alignment.center,
                height: 40,
                width: 120,

                child:Text('Recommend'),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 19, 175, 100)),
                ),
               )
               


                
                
                
                
                
                
                
                
                //top //popular//indoor //outdoor
              
                //   ),
                     
                    
                    
            ],),
          )




        ],
      ),
    );
  }


}