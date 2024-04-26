import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import '../../models/loc_model.dart';
import '../../models/weather_model.dart';

class ResponsiveWeatherScreen extends StatefulWidget {
  @override
  State<ResponsiveWeatherScreen> createState() =>
      _ResponsiveWeatherScreenState();
}

class _ResponsiveWeatherScreenState extends State<ResponsiveWeatherScreen> {
  var lat = "34.64157640";

  var lon = "50.87460350";

  var lang = "fa";

  final apiKey = '66fa9da16c30c2c0b5e16bd19e34ae28';
  WeatherModel? weather;

  @override
  void initState() {
    fetchApi(lat,lon,lang,apiKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size screenSize = MediaQuery.of(context).size;
    double searchBarHeight = screenSize.height * 0.1;
    double cityAndWeatherHeight = screenSize.height * 0.15;
    double characterImageSize = screenSize.width * 0.5;

    int maxTemp = weather?.list?.first.main?.tempMax?.toInt() ??
        0;
    int minTemp = weather?.list?.first.main?.tempMin?.toInt() ??
        0;
    String description = weather?.list?.first
        .weather?.first.description ??
        '';
    String cityName = weather?.city?.name ?? '';

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: searchBarHeight,
              alignment: Alignment.center,
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onSubmitted: (String value) {
                    // Handle the submitted value here.
                    print("Submitted value: $value");
                    fetchApiByCity(value, apiKey);
                  },
                )


            ),
            // City name and weather description
            Container(
              height: cityAndWeatherHeight,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(cityName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(description, style: TextStyle(fontSize: 14)), // Subtitle
                ],
              ),
            ),
            // Weather condition and character image
            Expanded(
              child: Row(
                children: [
                  //character image
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/woman.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Weather condition
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: characterImageSize,
                    // Give fixed width based on the screen width
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // Use Min size for column contents
                      children: <Widget>[
                         Text('$minTemp°-$maxTemp°',
                          style: TextStyle(
                              fontSize: 48, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20), // Adding some space
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // Ensure even spacing
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text('T-Shirt',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/apparel/shirt1.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Shorts', style: TextStyle(fontSize: 16)),
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/apparel/shorts1.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Sneakers',
                                    style: TextStyle(fontSize: 16)),
                                SizedBox(width: 30),
                                Image.asset(
                                  'assets/apparel/trainer1.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ), // Replace with your character image
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
   fetchApi(String lat, String lon, String lang, String apiKey) async {
    try {
      WeatherModel? fetchedWeather = await callApi(lat, lon, lang, apiKey);
      setState(() {
        weather = fetchedWeather;
      });
    } catch (e) {
      print('Failed to fetch weather: $e');
    }
  }

  void fetchApiByCity(String value, String apiKey) async {
    var url = Uri.https('api.openweathermap.org', '/geo/1.0/direct', {'q': value ,'appid': apiKey});
    final http.Response response = await http.get(url);
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      if (decodedJson.isNotEmpty) {
        var location = LocModel.fromJson(decodedJson[0]);
        fetchApi(location.lat.toString(), location.lon.toString(), 'fa', apiKey);
      } else {
        print('No location data found.');
      }
    } else {
      throw Exception('Failed to load location data');
    }
  }

}



Future<WeatherModel> callApi(String lat, String lon, String lang, String apiKey) async {
  var url = Uri.https('api.openweathermap.org', '/data/2.5/forecast', {
    'lat': lat,
    'lon': lon,
    'lang': lang,
    'units': 'metric',
    'appid': apiKey
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
