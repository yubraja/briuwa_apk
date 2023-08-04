class Plant  {
  String name;
  String image;
  String type;
  double price;
  String? family;
  String? origin;
  String height;
  String details;
  int? review;
  double? rating;

Plant({
  required this.name,
  required this.image,
  required this.type,
  required this.price,
  this.family,
  this.origin,
  required this.height,
  required this.details,
  this.review,
  this.rating

});
}





List<Plant> _plant=[

  Plant(name: 'Samantha',image: 'assets/images/image_1.png',type: 'Indoor',price:1000,height: '50 to 100', details: 'This is indoor type of plant'),
  Plant(name: 'Angelica',image: 'assets/images/image_2.png',type: 'Indoor',price:800,height: '40 to 80', details: 'This is indoor type of plant'),
  Plant(name: 'Moth Orchid',image: 'assets/images/image_3.png',type: 'Indoor',price:700,height: '50 to 100', details: 'This is indoor type of plant'),
  Plant(name: 'Monstera Deliciosa ',image: 'assets/images/plant_4.avif',type: 'Indoor',price:1000,height: '50 to 100', details: 'This is indoor type of plant'),
  Plant(name: 'Pepper Face',image: 'assets/images/plant5.avif',type: 'Indoor',price:1000,height: '50 to 100', details: 'This is indoor type of plant'),
  Plant(name: 'Pothos',image: 'assets/images/plant6.avif',type: 'Indoor',price:1000,height: '50 to 100', details: 'This is indoor type of plant'),
  Plant(name: 'Zz Plant',image: 'assets/images/plant7.avif',type: 'Indoor',price:1000,height: '50 to 100', details: 'This is indoor type of plant'),

];

List<Plant> get plant=>_plant;





  // Plant(name: 'Samantha',image: 'assets/images/image_1.png',type: 'Indoor',price:1000,height: '50 to 100', details: 'This is indoor type of plant'
  // ,review: 500,
  // rating: 4.9,),



