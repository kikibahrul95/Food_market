part of 'models.dart';

enum FoodType { new_food, popular, recomended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://img-global.cpcdn.com/recipes/8d0f42e49a649c76/680x482cq70/bakwan-sayur-aka-bala-bala-foto-resep-utama.jpg",
      name: "Bala-bala",
      description: "Bala merupakan makanan gorengan khas cirebon",
      ingredients: "Sayur,tepung,minyak",
      price: 150000,
      rate: 4.2,
      types: [FoodType.new_food, FoodType.popular, FoodType.recomended]),
  Food(
    id: 2,
    picturePath:
        "https://www.resepistimewa.com/wp-content/uploads/resep-tempe-goreng.jpg",
    description: "Tempe Goreng Merupakan cemilan orang indonesia",
    name: "Tempe Goreng",
    ingredients: "Tempe,tepung,minyak",
    price: 500,
    rate: 4.2,
  ),
  Food(
      id: 3,
      picturePath:
          "https://img.okezone.com/content/2020/03/04/298/2178157/camilan-malam-resep-tahu-isi-kriuknya-nagih-GL1B2BcyiK.jpg",
      description: "Tahu isi merupakan tahu kosong yang diiisi mie",
      name: "Tahu isi",
      ingredients: "Tahu,tepung,minyak",
      price: 1000,
      rate: 4.2,
      types: [FoodType.popular]),
  Food(
      id: 4,
      picturePath:
          "https://s2.bukalapak.com/img/7228564621/large/B10wQZsCEAEJz1l_scaled.jpg.webp",
      description: "Dage merupakan campuran tahu dan tempe",
      name: "Dage",
      ingredients: "tahu,tempe,tepung,minyak",
      price: 10000,
      rate: 4.2,
      types: [FoodType.recomended]),
  Food(
      id: 5,
      picturePath:
          "https://www.resepistimewa.com/wp-content/uploads/resep-risoles-mayo.jpg",
      description: "Risol Merupakan gorengan isi sayur",
      name: "Risol",
      ingredients: "Sayur,tepung,minyak",
      price: 1000,
      rate: 4.2),
];
