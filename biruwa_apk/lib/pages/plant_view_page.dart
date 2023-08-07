import 'package:flutter/material.dart';
import '../model/plant.dart';
class PlantViewPage extends StatefulWidget {
  PlantViewPage({Key? key}) : super(key: key);

  @override
  State<PlantViewPage> createState() => _PlantViewPageState();
}

class _PlantViewPageState extends State<PlantViewPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                
                child: Image.asset(
                  'assets/girl.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 40,
                right: 10,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 13, 218, 119),
                  ),
                  child: Icon(Icons.notification_add),
                ),
              ),
            ],
          ),
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
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: width,
              child: GridView.builder(
                itemCount: plant.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.
                            symmetric(horizontal: 5, ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                  
                              color: Colors.white,
                            ),
                            height: height * 0.45 - 200,
                            width: width * 0.90,
                            child: 
                            
                            Image.asset(plant[index].image,
                                fit: BoxFit.fitHeight,
                                height: height*0.45-100,),
                          ),
                  
                  
                  
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              height: 0,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.favorite_border,
                                  color: Colors.grey),
                            ),
                          ),
                  
                  
                  
                          Positioned(
                            bottom: -90,
                            left: 20,
                            child: Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child:
                              Column(
                                children: [
                                  Text(
                                    plant[index].name,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: const Color.fromARGB(
                                          255, 13, 218, 119),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween
                  
                                    ,
                                    children: [
                                      Text(
                                        plant[index].type,
                                        style: TextStyle(
                                          fontSize: 15,
                                        color: const Color.fromARGB(
                                        255, 13, 218, 119),                                          ),
                                      ),
                                  
                                      Text(
                                        'Rs'+plant[index].price.toString(),
                                      )
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  );

                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonProvider(String label, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Material(
          color: selectedIndex == index
              ? const Color.fromARGB(255, 13, 218, 119)
              : Colors.white,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: selectedIndex == index ? 120 : 80,
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
