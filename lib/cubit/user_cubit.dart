import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodmarket/models/models.dart';
import 'package:foodmarket/service/service.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  Future<void> signIn(String email, String password) async {
    ApiReturnValue<User> result = await UserService.signIn(email, password);

    if (result.value != null) {
      emit(UserLoaded(result.value));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }
}
