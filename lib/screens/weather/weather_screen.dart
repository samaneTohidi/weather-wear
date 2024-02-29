import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../models/clothing_model.dart';
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
    context.read<WeatherCubit>().checkCharacterSelected();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    String? characterName;
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
                      }
                    },
                    builder: (context, state) {
                      if (state is WeatherLoading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is WeatherError) {
                        return const Scaffold();
                      }
                      if (state is CharacterSelected) {
                        characterName = state.character;
                      }
                      else if (state is WeatherLoaded) {
                        String cityName = state.weather.city!.name!;
                        int currTemp =
                            state.weather.list?.first!.main!.temp!.toInt() ?? 0;
                        int maxTemp =
                            state.weather.list?.first!.main!.tempMax!.toInt() ??
                                0;
                        int minTemp =
                            state.weather.list?.first!.main!.tempMin!.toInt() ??
                                0;
                        String description = state.weather.list?.first!.weather!
                                .first?.description ??
                            '';
                        var dailyForecasts =
                            getDailyForecasts(state.weather.list!);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //SearchBar
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                              ),
                              child: Row(
                                children: [
                                  AnimSearchBar(
                                    rtl: true,
                                    width: 400,
                                    color: Color(0xffffb56b),
                                    textController: textController,
                                    suffixIcon: const Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 26,
                                    ),
                                    onSuffixTap: () async {
                                      FocusScope.of(context).unfocus();
                                      textController.clear();
                                    },
                                    style: f14RblackLetterSpacing2,
                                    onSubmitted: (String value) {
                                      if (value.isEmpty) {
                                        print('No city entered');
                                      } else {
                                        print(
                                            'sam_textController ${textController.text}');
                                        context
                                            .read<WeatherCubit>()
                                            .loadWeather(
                                                isCurrentCity: false,
                                                cityName: value);
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                            //City name
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  cityName,
                                  style: GoogleFonts.questrial(
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: size.height * 0.02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            //currTemp
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.03,
                              ),
                              child: Align(
                                child: Text(
                                  '$currTemp˚', //curent temperature
                                  style: GoogleFonts.questrial(
                                    color: currTemp <= 0
                                        ? Colors.blue
                                        : currTemp > 0 && currTemp <= 15
                                            ? Colors.indigo
                                            : currTemp > 15 && currTemp < 30
                                                ? Colors.deepPurple
                                                : Colors.pink,
                                    fontSize: size.height * 0.05,
                                  ),
                                ),
                              ),
                            ),
                            //Line
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.25),
                              child: Divider(
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                            //description
                            Padding(
                              padding: EdgeInsets.only(
                                top: size.height * 0.005,
                              ),
                              child: Align(
                                child: Text(
                                  description, // weather
                                  style: GoogleFonts.questrial(
                                    color: isDarkMode
                                        ? Colors.white54
                                        : Colors.black54,
                                    fontSize: size.height * 0.02,
                                  ),
                                ),
                              ),
                            ),
                            //Min and Max And buildOutfit
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.13,

                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '$characterName', // min temperature
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

                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
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
                                          Padding(
                                            padding:
                                            EdgeInsets.all(size.width * 0.005),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children: [
                                                  buildOutfit(minTemp, maxTemp, size, isDarkMode)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //buildSevenDayForecast
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
                                      padding:
                                          EdgeInsets.all(size.width * 0.005),
                                      child: Column(
                                        children: [
                                          ...List.generate(
                                              dailyForecasts.length, (index) {
                                            var forecast =
                                                dailyForecasts[index];
                                            var day = DateFormat('EEEE').format(
                                                DateTime.parse(
                                                    forecast.dtTxt!));
                                            var minTemp =
                                                forecast.main!.tempMin!.toInt();
                                            var maxTemp =
                                                forecast.main!.tempMax!.toInt();
                                            var weatherIcon = forecast
                                                .weather!.first.icon
                                                .toString();
                                            return buildSevenDayForecast(
                                                day,
                                                minTemp,
                                                maxTemp,
                                                weatherIcon,
                                                size,
                                                isDarkMode);
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





  Widget buildSevenDayForecast(String time, int minTemp, int maxTemp,
      String weatherIcon, size, bool isDarkMode) {
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
                child: Image.asset(iconUrl, height: size.height * 0.03),
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

  Widget buildOutfit(int minTemp, int maxTemp, size, bool isDarkMode) {

    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade200.withOpacity(0.5)),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                '${minTemp}˚', // min temperature
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
                '$maxTemp˚', //max temperature
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

          Text(clothingList.first.name),
          Text(clothingList.last.name),

        ],
      ),
    );
  }
}
