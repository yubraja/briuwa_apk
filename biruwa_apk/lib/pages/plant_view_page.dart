import 'package:flutter/material.dart';

class PlantViewPage extends StatefulWidget {
   PlantViewPage({super.key});

  @override
  State<PlantViewPage> createState() => _PlantViewPageState();
}

class _PlantViewPageState extends State<PlantViewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
        children: [
          Container(child: Image.asset('assets/girl.png',width: 500,fit: BoxFit.cover,),width: double.infinity,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              buttonCreation('Recommend',0),
              buttonCreation('Top',1),
              buttonCreation('Popoular',2),
              buttonCreation('Indoor',3),
              buttonCreation('Outdoor',4),
          
          
            ],),
          )




        ],
      ),
    );
  }

 Widget buttonCreation(String label,int index) {

  return TextButton(onPressed: (){

    setState(() {
      
    });
    
    
  }, child:Text(label),
  // style: ButtonStyle(
  //   backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 168,190,198),),
    
  //   ),
    
  
  
  );

 }
}