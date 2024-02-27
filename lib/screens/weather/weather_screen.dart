import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'constants.dart';
import 'cubit/weather_cubit.dart';



class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  TextEditingController textController = TextEditingController(text: "");

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    context.read<WeatherCubit>().loadWeather(isCurrentCity: true, cityName: "");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: isDarkMode ? Colors.black : Colors.white,
          ),
          child: SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: BlocConsumer<WeatherCubit, WeatherState>(
                    listener: (context, state) {
                      if (state is WeatherError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(state.message.toString())));
                      }                    },
                    builder: (context, state) {
                      if (state is WeatherLoading){
                        return const Center(child: CircularProgressIndicator());

                      } else if(state is WeatherError){
                        return Scaffold();

                      }
                      else if(state is WeatherLoaded){
                        String cityName = state.weather.city!.name!;
                        int currTemp = state.weather.list?.first!.main!.temp!.toInt() ?? 0;
                        int maxTemp = state.weather.list?.first!.main!.tempMax!.toInt() ?? 0;
                        int minTemp = state.weather.list?.first!.main!.tempMin!.toInt() ?? 0;
                        var dailyForecasts = getDailyForecasts(state.weather.list!);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.01,
                                horizontal: size.width * 0.05,
                              ),
                              child: Row(
                                children: [
                                  AnimSearchBar(
                                    rtl: true,
                                    width: 400,
                                    color:  Color(0xffffb56b),
                                    textController: textController,
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onSuffixTap: () async {
                                      FocusScope.of(context).unfocus();
                                      textController.clear();
                                    },
                                    style: f14RblackLetterSpacing2,
                                    onSubmitted: (String value ) {
                                    if(value.isEmpty){
                                      print('No city entered');

                                    }
                                    else{
                                      print('sam_textController ${textController.text}');
                                      context.read<WeatherCubit>().loadWeather(isCurrentCity: false, cityName: value);
                                    }

                                  },
                                  ),

                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.03,
                              ),
                              child: Align(
                                child: Text(
                                  cityName,
                                  style: GoogleFonts.questrial(
                                    color: isDarkMode ? Colors.white : Colors.black,
                                    fontSize: size.height * 0.06,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.005,
                              ),
                              child: Align(
                                child: Text(
                                  'Today', //day
                                  style: GoogleFonts.questrial(
                                    color:
                                    isDarkMode ? Colors.white54 : Colors.black54,
                                    fontSize: size.height * 0.035,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.03,
                              ),
                              child: Align(
                                child: Text(
                                  '$currTemp˚C', //curent temperature
                                  style: GoogleFonts.questrial(
                                    color: currTemp <= 0
                                        ? Colors.blue
                                        : currTemp > 0 && currTemp <= 15
                                        ? Colors.indigo
                                        : currTemp > 15 && currTemp < 30
                                        ? Colors.deepPurple
                                        : Colors.pink,
                                    fontSize: size.height * 0.13,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.25),
                              child: Divider(
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.005,
                              ),
                              child: Align(
                                child: Text(
                                  '${state.weather.list?.first!.weather!.first?.description}', // weather
                                  style: GoogleFonts.questrial(
                                    color:
                                    isDarkMode ? Colors.white54 : Colors.black54,
                                    fontSize: size.height * 0.03,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.03,
                                bottom: size.height * 0.01,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '$minTemp˚C', // min temperature
                                    style: GoogleFonts.questrial(
                                      color: minTemp <= 0
                                          ? Colors.blue
                                          : minTemp > 0 && minTemp <= 15
                                          ? Colors.indigo
                                          : minTemp > 15 && minTemp < 30
                                          ? Colors.deepPurple
                                          : Colors.pink,
                                      fontSize: size.height * 0.03,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: GoogleFonts.questrial(
                                      color: isDarkMode
                                          ? Colors.white54
                                          : Colors.black54,
                                      fontSize: size.height * 0.03,
                                    ),
                                  ),
                                  Text(
                                    '$maxTemp˚C', //max temperature
                                    style: GoogleFonts.questrial(
                                      color: maxTemp <= 0
                                          ? Colors.blue
                                          : maxTemp > 0 && maxTemp <= 15
                                          ? Colors.indigo
                                          : maxTemp > 15 && maxTemp < 30
                                          ? Colors.deepPurple
                                          : Colors.pink,
                                      fontSize: size.height * 0.03,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: isDarkMode
                                      ? Colors.white.withOpacity(0.05)
                                      : Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    // Align(
                                    //   alignment: Alignment.centerLeft,
                                    //   child: Padding(
                                    //     padding: EdgeInsets.only(
                                    //       top: size.height * 0.01,
                                    //       left: size.width * 0.03,
                                    //     ),
                                    //     child: Text(
                                    //       'Forecast for today',
                                    //       // style: GoogleFonts.questrial(
                                    //       //   color: isDarkMode
                                    //       //       ? Colors.white
                                    //       //       : Colors.black,
                                    //       //   fontSize: size.height * 0.025,
                                    //       //   fontWeight: FontWeight.bold,
                                    //       // ),
                                    //     ),
                                    //   ),
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.all(size.width * 0.005),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                                vertical: size.height * 0.02,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: Colors.white.withOpacity(0.05),
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                          left: size.width * 0.03,
                                        ),
                                        child: Text(
                                          '7-day forecast',
                                          style: GoogleFonts.questrial(
                                            color: isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: size.height * 0.025,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(size.width * 0.005),
                                      child: Column(
                                        children: [
                                          ...List.generate(dailyForecasts.length, (index) {
                                            var forecast = dailyForecasts[index];
                                            var day = DateFormat('EEEE').format(DateTime.parse(forecast.dtTxt!));
                                            var minTemp = forecast.main!.tempMin!.round();
                                            var maxTemp = forecast.main!.tempMax!.round();
                                            var weatherIcon =  forecast.weather!.first.icon.toString();
                                            return buildSevenDayForecast(day, minTemp, maxTemp,weatherIcon , size, isDarkMode);
                                          }),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );

                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForecastToday(String time, int temp, int wind, int rainChance,
      IconData weatherIcon, size, bool isDarkMode) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.025),
      child: Column(
        children: [
          Text(
            time,
            style: GoogleFonts.questrial(
              color: isDarkMode ? Colors.white : Colors.black,
              fontSize: size.height * 0.02,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.005,
                ),
                child: FaIcon(
                  weatherIcon,
                  color: isDarkMode ? Colors.white : Colors.black,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          Text(
            '$temp˚C',
            style: GoogleFonts.questrial(
              color: isDarkMode ? Colors.white : Colors.black,
              fontSize: size.height * 0.025,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01,
                ),
                child: FaIcon(
                  FontAwesomeIcons.wind,
                  color: Colors.grey,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          Text(
            '$wind km/h',
            style: GoogleFonts.questrial(
              color: Colors.grey,
              fontSize: size.height * 0.02,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01,
                ),
                child: FaIcon(
                  FontAwesomeIcons.umbrella,
                  color: Colors.blue,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          Text(
            '$rainChance %',
            style: GoogleFonts.questrial(
              color: Colors.blue,
              fontSize: size.height * 0.02,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSevenDayForecast(String time, int minTemp, int maxTemp, String weatherIcon, size, bool isDarkMode) {

    String iconUrl = 'assets/images/$weatherIcon.png';

    return Padding(
      padding: EdgeInsets.all(
        size.height * 0.005,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02,
                ),
                child: Text(
                  time,
                  style: GoogleFonts.questrial(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: size.height * 0.025,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.32,
                ),
                child: Image.asset(
                    iconUrl,
                   height: size.height * 0.03
                ),
              ),
              Align(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.15,
                  ),
                  child: Text(
                    '$minTemp˚C',
                    style: GoogleFonts.questrial(
                      color: isDarkMode ? Colors.white38 : Colors.black38,
                      fontSize: size.height * 0.025,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                  ),
                  child: Text(
                    '$maxTemp˚C',
                    style: GoogleFonts.questrial(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontSize: size.height * 0.025,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
