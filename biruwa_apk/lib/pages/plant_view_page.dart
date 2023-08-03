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

          //here image and notification bell icon is shown
          Stack(
            alignment: Alignment.topLeft,
            
            children:[ 
              Container(child: Image.asset('assets/girl.png',width: 500,fit: BoxFit.cover,),width: double.infinity,),
            Positioned(
              top: 40,
              right: 10,
            
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 25, 132, 80),),
                child: Icon(Icons.notification_add),
              ),
            ),
          ],),


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                buttonProvider('Recommend', 0),
                buttonProvider('Top', 1),
                buttonProvider('Popular', 2),
                buttonProvider('Indoor', 3),
                buttonProvider('Outdoor', 4),


               




               



                
                
                
                
                
                
                
                
                //top //popular//indoor //outdoor
              
                //   ),
                     
                    
                    
            ],),
          )




        ],
      ),
    );
  }

  Widget buttonProvider(String label, int index)
  {
    
        return    Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: GestureDetector(onTap: (){
                  setState(() {
                    selectedIndex=index;
                  });
                 }, child:Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: selectedIndex==index?120:80,
               
                  child:Text(label),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                  color: selectedIndex==index?Color.fromARGB(255, 19, 175, 100):Colors.white,)
                  ),
                 ),
               );



  }






}