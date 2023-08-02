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
              buttonCreation('Recommend'),
              buttonCreation('Top',),
              buttonCreation('Popoular',),
              buttonCreation('Indoor',),
              buttonCreation('Outdoor',),
          
          
            ],),
          )




        ],
      ),
    );
  }

 Widget buttonCreation(String label,) {

  return TextButton(onPressed: (){

    
    
  }, child:Text(label),
  // style: ButtonStyle(
  //   backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 168,190,198),),
    
  //   ),
    
  
  
  );

 }
}