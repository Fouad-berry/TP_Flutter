class Product {
  //constructor
    /* 
      {} : parametre nommé
      this : paramètre promu
      required: paramètre obligatoire
     */
/*     required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
 */  
  int id;
  String title,description,category,image;
  num price;
  Map rating;

    //constructeur
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

}
