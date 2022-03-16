part of 'models.dart';

enum TransactionStatus { delivered, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime datetime;
  final TransactionStatus status;
  final User user;

  Transaction(
      {this.id,
      this.food,
      this.quantity,
      this.total,
      this.datetime,
      this.status,
      this.user});
  Transaction copyWith(
      {int id,
      Food food,
      int quantity,
      int total,
      DateTime dateTime,
      TransactionStatus status = TransactionStatus.on_delivery,
      User user}) {
    return Transaction(
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        datetime: datetime ?? this.datetime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  //
  List<Object> get props => [id, food, quantity, total, datetime, status, user];
}

List<Transaction> mockTransactions = [
  Transaction(
      id: 1,
      food: mockFoods[2],
      quantity: 10,
      total: (mockFoods[2].price * 10 * 1.1).round() + 6000,
      datetime: DateTime.now(),
      status: TransactionStatus.delivered,
      user: mockUser),
  Transaction(
      id: 2,
      food: mockFoods[1],
      quantity: 10,
      total: (mockFoods[2].price * 2 * 1.1).round() + 15000,
      datetime: DateTime.now(),
      status: TransactionStatus.on_delivery,
      user: mockUser),
  Transaction(
      id: 3,
      food: mockFoods[3],
      quantity: 10,
      total: (mockFoods[2].price * 2 * 1.1).round() + 5000,
      datetime: DateTime.now(),
      status: TransactionStatus.cancelled,
      user: mockUser),
  Transaction(
      id: 4,
      food: mockFoods[4],
      quantity: 10,
      total: (mockFoods[2].price * 4 * 1.1).round() + 15000,
      datetime: DateTime.now(),
      status: TransactionStatus.pending,
      user: mockUser),
];
