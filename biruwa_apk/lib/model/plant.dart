class Plant {
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



// List<Plant> _plant={
//   Plant(name: 'Samantha',image: 'assets/images/image_1.png',type: 'Indoor',price:1000,height: 50 to 100, details: 'This is indoor type of plant'
//   ,review: 500,
//   rating: 4.9),
//    Plant(name: 'Samantha',image: 'assets/images/image_1.png',type: 'Indoor',price:1000,height: 50 to 100, details: 'This is indoor type of plant'
//   ,review: 500,
//   rating: 4.9),
// };
}