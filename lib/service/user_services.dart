part of 'service.dart';

class UserService {
  static Future<ApiReturnValue<User>> signIn(
      String email, String password) async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockUser);

    // return ApiReturnValue(message: "Anda GAGAl login");
  }
}
