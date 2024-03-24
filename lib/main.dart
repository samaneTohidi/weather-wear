import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_wear/screens/main/cubit/main_cubit.dart';

import 'screens/weather/cubit/weather_cubit.dart';
import 'screens/weather/weather_screen.dart';


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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        LocalizationDelegate(),
      ],

      supportedLocales: const [
        Locale('en', ''),
        Locale('fa', ''),
      ],

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  BlocProvider(
        create: (context) => WeatherCubit(),
        child:  const WeatherScreen(),
      ),
    );
  }
}