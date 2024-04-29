import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_wear/screens/weather/widgets/city_location_widget.dart';
import 'package:weather_wear/screens/weather/widgets/search_widget.dart';

import '../../models/loc_model.dart';
import '../../models/weather_model.dart';
import '../../models/weather_recommendation_model.dart';
import 'package:logger/logger.dart';

import '../../repositories/api_key.dart';

var logger = Logger();


class WeatherScreen extends StatefulWidget {
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen>
    with WidgetsBindingObserver {
  var lat = "34.64157640";

  var lon = "50.87460350";

  var lang = "en";

  bool isFirstWidgetVisible = true;

  WeatherModel? weather;
  WeatherRecommendationModel? fetchRecommendationClothing;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    checkLocPosition();
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double searchBarHeight = screenSize.height * 0.1;
    double cityAndWeatherHeight = screenSize.height * 0.4;
    double iconWeatherHeight = screenSize.height * 0.2;
    int maxTemp = weather?.list?.first.main?.tempMax?.toInt() ?? 0;
    int minTemp = weather?.list?.first.main?.tempMin?.toInt() ?? 0;
    int temp = weather?.list?.first.main?.temp?.toInt() ?? 0;
    String description = weather?.list?.first.weather?.first.description ?? '';
    String cityName = weather?.city?.name ?? '';
    num windSpeed = weather?.list?.first.wind?.speed ?? 0;
    num humidity = weather?.list?.first.main?.humidity ?? 0;
    var weatherIcon = weather?.list?.first.weather?.first.icon.toString() ?? '02d';

    String recommendationClothing =
        fetchRecommendationClothing?.choices?.first.message?.content ?? '';



    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF08244F),
            Color(0xFF134CB5),
            Color(0xFF0B42AB),
          ],
          stops: [0.0, 0.5, 1.0],
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 38.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              isFirstWidgetVisible
                  ? Container(
                      height: searchBarHeight,
                      alignment: Alignment.centerLeft,
                      child: CityLocationWidget(
                          toggleWidget: toggleWidget, cityName: cityName))
                  : Container(
                      height: searchBarHeight,
                      child: SearchWidget(
                          fetchApiByCity: (v) {
                            fetchApiByCity(v);
                          },
                          toggleWidget: toggleWidget)),
              // City name and weather description
              Container(
                height: cityAndWeatherHeight,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: iconWeatherHeight,
                      child: Image.asset(
                        'assets/images/$weatherIcon.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Container(
                          child: Column(
                        children: [
                          Text('${temp.toString()}°',
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text(description,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          const SizedBox(height: 4),
                          Text('Max$maxTemp° Min$minTemp°',
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.white)),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(
                          45), // Adjust the radius as needed
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 14,
                              right: 14,
                              top: 8,
                              bottom: 8,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/humidity.svg',
                                    width: 24, height: 24),
                                SizedBox(width: 4),
                                Text(
                                  '$humidity%',
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // This centers the Row contents horizontally
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/images/wind.svg',
                                    width: 24, height: 24),
                                SizedBox(width: 4),
                                Text(
                                  '$windSpeed meter/sec',
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(
                                  45)), // Adjust the radius as needed
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: SingleChildScrollView(
                              child: ConstrainedBox(
                                constraints: BoxConstraints.expand(),
                                child: Text(
                                    recommendationClothing.isEmpty ? "No recommendations available" : recommendationClothing,
                                    style: TextStyle(color: Colors.white)),
                              )),
                        )),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );

  }

  void toggleWidget() {
    setState(() {
      isFirstWidgetVisible = !isFirstWidgetVisible;

    });
  }

    fetchApi(String lat, String lon, String lang) async {
      try {
        WeatherModel? fetchedWeather = await fetchWeatherResponse(lat, lon, lang);

        if (fetchedWeather != null) {
          setState(() {
            weather = fetchedWeather;
          });

          int minTemp = fetchedWeather.list?.first.main?.tempMin?.toInt() ?? 0;
          int maxTemp = fetchedWeather.list?.first.main?.tempMax?.toInt() ?? 0;
          String description = fetchedWeather.list?.first.weather?.first.description ?? '';
          num windSpeed = fetchedWeather.list?.first.wind?.speed ?? 0;
          num humidity = fetchedWeather.list?.first.main?.humidity ?? 0;

          fetchRecommendation(minTemp, maxTemp, description, windSpeed, humidity);
        }
      } catch (e) {
        print('Failed to fetch weather: $e');
      }
    }


  fetchRecommendation(int minTemp, int maxTemp,String description, num windSpeed, num humidity) async {
    try {
      WeatherRecommendationModel? fetchRecommendation =
          await fetchWeatherClothingRecommendation(
              minTemperature: minTemp.toDouble(),
              maxTemperature: maxTemp.toDouble(),
              skyCondition: description,
              windSpeed: windSpeed.toDouble(),
              humidity: humidity.toInt());

      setState(() {
        fetchRecommendationClothing = fetchRecommendation;
      });
    } catch (e) {
      print('Failed to fetch weather: $e');
    }
  }

  checkLocPosition() async {
    try {
      Position currentPosition = await getCurrentPosition();
      fetchApi(currentPosition!.latitude.toString(),
          currentPosition!.longitude.toString(), lang);

    } catch (e) {
      print('Failed to fetch weather: $e');
    }
  }

  void fetchApiByCity(String value) async {
    var url = Uri.https('api.openweathermap.org', '/geo/1.0/direct',
        {'q': value, 'appid': weatherKey});
    final http.Response response = await http.get(url);
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      if (decodedJson.isNotEmpty) {
        var location = LocModel.fromJson(decodedJson[0]);
        fetchApi(location.lat.toString(), location.lon.toString(), lang);
      } else {
        print('No location data found.');
      }
    } else {
      throw Exception('Failed to load location data');
    }
  }

  void _showSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
        label: 'Settings',
        onPressed: () {
          // Open app settings so the user can enable permissions
          Geolocator.openAppSettings();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      print('Location services are not enabled');
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        _showSnackBar('Location permissions are permanently denied.');
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      _showSnackBar('Location Permissions are denied forever.');
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
  }
}

Future<WeatherModel> fetchWeatherResponse(
    String lat, String lon, String lang) async {
  var url = Uri.https('api.openweathermap.org', '/data/2.5/forecast', {
    'lat': lat,
    'lon': lon,
    'lang': lang,
    'units': 'metric',
    'appid': weatherKey
  });

  final http.Response response = await http.get(url);
  print('Response Body${response.body.toString()}');
  if (response.statusCode == 200) {
    final decodedJson = json.decode(response.body);
    return WeatherModel.fromJson(decodedJson);
  } else {
    throw Exception('Failed to load weather data');
  }
}

Future<WeatherRecommendationModel> fetchWeatherClothingRecommendation({
  required double minTemperature,
  required double maxTemperature,
  required String skyCondition,
  required double windSpeed,
  required int humidity,
}) async {
  var headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $chatKey',
  };
  String weatherDescription = "Today's weather is as follows: "
      "Minimum temperature: $minTemperature, "
      "Maximum temperature: $maxTemperature, "
      "Clarity of water and air: $skyCondition, "
      "Wind speed: $windSpeed, "
      "Humidity: $humidity. "
      "I am a woman, according to this information today, what kind of cover do you generally recommend for this weather condition? "
      "Give me the right combination of clothes in a concise and clear way and give a general explanation separately for temperature and weather conditions, wind speed and humidity.";

  var request = http.Request(
      'POST', Uri.parse('https://api.openai.com/v1/chat/completions'));
  request.body = json.encode({
    "model": "gpt-3.5-turbo",
    "messages": [
      {"role": "system", "content": "You are a helpful assistant."},
      {"role": "user", "content": weatherDescription}
    ]
  });
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    String responseBody = await response.stream.bytesToString();

    final decodedJson = json.decode(responseBody);

    return WeatherRecommendationModel.fromJson(decodedJson);
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
