import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:foodmarket/models/models.dart';
import 'package:foodmarket/service/service.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());
  Future<void> getTransactions() async {
    ApiReturnValue<List<Transaction>> result =
        await TransactionService.getTransactions();

    if (result.value != null) {
      emit(TransactionLoaded(result.value));
    } else {
      emit(TransactionLoadingFailed(result.message));
    }
  }

  Future<bool> submitTransactions(Transaction transactions) async {
    ApiReturnValue<Transaction> result =
        await TransactionService.submitTransaction(transactions);
    if (result.value != null) {
      emit(TransactionLoaded(
          (state as TransactionLoaded).transaction + [result.value]));
      return true;
    } else {
      return false;
    }
  }
}
