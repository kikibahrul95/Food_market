part of 'service.dart';

class FoodService {
  static Future<ApiReturnValue<List<Food>>> getFoods() async {
    await Future.delayed(Duration(milliseconds: 500));

    return ApiReturnValue(value: mockFoods);
  }
}
