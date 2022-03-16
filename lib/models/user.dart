part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});
  @override
  //
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Lydia Nadira',
    address: 'PentHouse',
    city: 'Capadocia',
    houseNumber: '5',
    phoneNumber: '081285555',
    email: 'lydia.Nadira@gmail.com',
    picturePath:
        'https://th.bing.com/th/id/OIP.DOgJ8rFyO8TtBpP8Awg1bgHaEU?w=325&h=189&c=7&r=0&o=5&pid=1.7');
