import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket/cubit/cubit.dart';
import 'package:get/get.dart';
import 'package:foodmarket/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => UserCubit()),
          BlocProvider(create: (_) => FoodCubit()),
          BlocProvider(create: (_) => TransactionCubit()),
        ],
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false, home: SignInPage()));
  }
}
