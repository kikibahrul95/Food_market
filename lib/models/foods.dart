part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
  });
}

Food mockFood = Food(
    id: 1,
    picturePath:
        "https://img-global.cpcdn.com/recipes/8d0f42e49a649c76/680x482cq70/bakwan-sayur-aka-bala-bala-foto-resep-utama.jpg",
    description: "Bala merupakan makanan gorengan khas cirebon",
    ingredients: "Sayur,tepung,minyak",
    price: 150000,
    rate: 4.2);
