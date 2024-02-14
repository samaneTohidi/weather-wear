
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../avatar/character_screen.dart';
import '../avatar/cubit/avatar_cubit.dart';
import '../setting/cubit/setting_cubit.dart';
import '../setting/setting_screen.dart';
import '../weather/cubit/weather_cubit.dart';
import '../weather/weather_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    BlocProvider(
      create: (context) => WeatherCubit(),
      child:  WeatherScreen(),
    ),
    BlocProvider(
      create: (context) => SettingCubit(),
      child: const SettingScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.sunny),
            label: 'main',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
      ),
    );
  }
}
