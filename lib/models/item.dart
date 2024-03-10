class Item{
 
 String? title;
 String? category;
 String? location;
 String? price;
 String? image;

Item(this.title,this.category,this.location,this.price,this.image);

static List<Item> recomendation = [
 
 Item('Modern House for Renting ', 'House', 'Omman,Jordan', '29900', 'images/modern_house.jpg'),
 Item('Big Villa', 'Villa', 'Al-Zarqa , Jordan', '4000', 'images/villa.jpg'),
 Item('Apartment', 'apartament', 'Oman , Jordan', '5000', 'images/apartment.jpg'),
];
static List<Item> nearby = [
 
 Item('Family House', 'House', 'Omman,Jordan', '3400', 'images/modern_house2.jpg'),
 Item('Small Villa', 'Villa', 'Al-Zarqa , Jordan', '3000', 'images/villa2.jpg'),
 Item('Big Villa', 'Villa', 'Al-Zarqa , Jordan', '5600', 'images/villa2.jpg'),
 Item('Student Apartment', 'apartament', 'Oman , Jordan', '5000', 'images/apartment2.jpg'),
];



}