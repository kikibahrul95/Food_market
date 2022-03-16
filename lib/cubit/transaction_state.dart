part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoaded extends TransactionState {
  final List<Transaction> transaction;

  TransactionLoaded(this.transaction);

  @override
  List<Object> get props => [transaction];
}

class TransactionLoadingFailed extends TransactionState {
  final String massage;
  TransactionLoadingFailed(this.massage);
  @override
  List<Object> get props => [massage];
}
