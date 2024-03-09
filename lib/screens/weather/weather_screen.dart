import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../models/weather_conditions_model.dart';
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
    context.read<WeatherCubit>().loadWeather(
          isCurrentCity: true,
          cityName: "",
        );
    context.read<WeatherCubit>().checkCharacterSelected();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    WeatherConditionsModel? tempDescription;

    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: isDarkMode ? Colors.black : Colors.white,
          ),
          child: SafeArea(
            child: Center(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: BlocConsumer<WeatherCubit, WeatherState>(
                      listener: (context, state) {
                      },
                      builder: (context, state) {
                        if (state is WeatherLoading) {
                          return Column(
                            children: [
                              const CircularProgressIndicator(),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.06),
                                child: Text(
                                  'Loading Weather...',
                                  style: GoogleFonts.questrial(
                                      color: isDarkMode
                                          ? Colors.white54
                                          : Colors.black54,
                                      fontSize: size.height * 0.03),
                                ),
                              )
                            ],
                          );
                        }
                        else if (state is WeatherError) {
                          return const Scaffold();
                        }
                        else if (state is InternetDisconnected) {
                          return Text(
                              "No internet connection. Please check your connection.",
                              style: GoogleFonts.questrial(
                                  color: isDarkMode
                                      ? Colors.white54
                                      : Colors.black54,
                                  fontSize: size.height * 0.01));
                        }
                        else if (state is WeatherLoaded) {
                          String cityName = state.weather.city!.name!;
                          int currTemp =
                              state.weather.list?.first.main!.temp!.toInt() ??
                                  0;
                          String weatherCondition =
                              state.weather.list?.first.weather!.first.main ??
                                  '';
                          int maxTemp = state.weather.list?.first.main!.tempMax!
                                  .toInt() ??
                              0;
                          int minTemp = state.weather.list?.first.main!.tempMin!
                                  .toInt() ??
                              0;
                          String description = state.weather.list?.first
                                  .weather!.first.description ??
                              '';
                          var dailyForecasts =
                              getDailyForecasts(state.weather.list!);
                          tempDescription =
                              updateWeather(currTemp, weatherCondition);
                          var recommendedClothes = getClothesRecommendation(
                              tempDescription!.weatherType,
                              tempDescription!.weatherCondition);
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //SearchBar
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.05),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: AnimSearchBar(
                                        rtl: true,
                                        width: size.width * 0.9,
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
                                    ),
                                  ],
                                ),
                              ),

                              //currTemp
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: size.height * 0.03,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    cityName,
                                    style: GoogleFonts.questrial(
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: size.height * 0.04,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              //Line
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.13,
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: size.height * 0.03,
                                              bottom: size.height * 0.03,
                                            ),
                                            child: Align(
                                              child: Text(
                                                '$currTemp˚',
                                                style: GoogleFonts.questrial(
                                                  color: currTemp <= 0
                                                      ? Colors.blue
                                                      : currTemp > 0 &&
                                                              currTemp <= 15
                                                          ? Colors.indigo
                                                          : currTemp > 15 &&
                                                                  currTemp < 30
                                                              ? Colors
                                                                  .deepPurple
                                                              : Colors.pink,
                                                  fontSize: size.height * 0.05,
                                                ),
                                              ),
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
                                              padding: EdgeInsets.all(
                                                  size.width * 0.005),
                                              child: Column(
                                                children: [
                                                  ...recommendedClothes
                                                      .map((clothing) =>
                                                          buildOutfit(
                                                              clothing.name,
                                                              clothing.image,
                                                              size,
                                                              isDarkMode))
                                                      .toList(),
                                                ],
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
                                            '6-day forecast',
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
                                              var day = DateFormat('EEEE')
                                                  .format(DateTime.parse(
                                                      forecast.dtTxt!));
                                              var minTemp = forecast
                                                  .main!.tempMin!
                                                  .toInt();

                                              var maxTemp = forecast
                                                  .main!.tempMax!
                                                  .toInt();

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
                      buildWhen: (previousState, state) {
                        return state is WeatherLoaded ||
                            state is WeatherLoading || state is InternetConnected || state is InternetDisconnected;
                      },
                    ),
                  ),
                ],
              ),
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

  Widget buildOutfit(
      String apparelName, List<String> apparelIcon, size, bool isDarkMode) {
    Random random = Random();
    int randomIndex = random.nextInt(apparelIcon.length);
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade200.withOpacity(0.4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  apparelName,
                  style: GoogleFonts.questrial(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: size.height * 0.02,
                  ),
                ),
                Image.asset(
                  'assets/apparel/${apparelIcon[randomIndex]}.png',
                  width: 24,
                  height: 24,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
