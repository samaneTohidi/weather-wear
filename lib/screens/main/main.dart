import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_wear/screens/main/cubit/main_cubit.dart';
import 'package:weather_wear/screens/main/nav_screen.dart';

import '../avatar/character_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MainCubit mainCubit = MainCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => mainCubit,
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          if (state is CharacterSelected) {
            return CharacterScreen();
          } else {
            return NavScreen();
          }
        },
      ),
    );
  }
}