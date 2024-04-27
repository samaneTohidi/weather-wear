import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather_wear/screens/weather/widgets/search_widget.dart';

import '../../models/loc_model.dart';
import '../../models/weather_model.dart';
import '../../repositories/api_key.dart';

class WeatherScreen extends StatefulWidget  {
  @override
  State<WeatherScreen> createState() =>
      _WeatherScreenState();
}


class _WeatherScreenState extends State<WeatherScreen> with WidgetsBindingObserver {

  var lat = "34.64157640";

  var lon = "50.87460350";

  var lang = "fa";

  WeatherModel? weather;

  List<String> coverBk = ['cloudy','snow', 'sunny'];
  int? randomIndex;
  Random random = Random();


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
      setState(() {
        randomIndex = random.nextInt(coverBk.length);

      });
    }

  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double searchBarHeight = screenSize.height * 0.1;
    double cityAndWeatherHeight = screenSize.height * 0.15;
    double characterImageSize = screenSize.width * 0.5;

    int maxTemp = weather?.list?.first.main?.tempMax?.toInt() ?? 0;
    int minTemp = weather?.list?.first.main?.tempMin?.toInt() ?? 0;
    String description = weather?.list?.first.weather?.first.description ?? '';
    String cityName = weather?.city?.name ?? '';


    return Scaffold(
        body: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/${coverBk[randomIndex?? 1]}.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 38.0, left: 16.0, right: 16.0),
            child: Column(
                  children: [
                    Container(
                        height: searchBarHeight,
                        alignment: Alignment.center,
                        child: SearchWidget(fetchApiByCity:(v){
                          fetchApiByCity(v);
                        })),
                    // City name and weather description
                    Container(
                      height: cityAndWeatherHeight,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(cityName, style: TextStyle(fontSize: 18,fontFamily:'IRANSansMobile', fontWeight: FontWeight.bold)),
                          Text(description, style: TextStyle(fontSize: 14,fontFamily:'IRANSansMobile')), // Subtitle
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
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        '$minTemp°-$maxTemp°',
                                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10), // Adding some space
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  ),
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
        ),
      );

  }

  fetchApi(String lat, String lon, String lang) async {
    try {
      WeatherModel? fetchedWeather = await callApi(lat, lon, lang);
      setState(() {
        weather = fetchedWeather;
      });
    } catch (e) {
      print('Failed to fetch weather: $e');
    }
  }

  checkLocPosition() async {
    try {
      Position currentPosition = await getCurrentPosition();
        fetchApi(currentPosition!.latitude.toString(), currentPosition!.longitude.toString(), lang);

    } catch (e) {
      print('Failed to fetch weather: $e');
    }
  }

  void fetchApiByCity(String value) async {
    var url = Uri.https('api.openweathermap.org', '/geo/1.0/direct',
        {'q': value, 'appid': apiKey});
    final http.Response response = await http.get(url);
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final decodedJson = json.decode(response.body);
      if (decodedJson.isNotEmpty) {
        var location = LocModel.fromJson(decodedJson[0]);
        fetchApi(
            location.lat.toString(), location.lon.toString(), 'fa');
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

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
  }

}



Future<WeatherModel> callApi(
    String lat, String lon, String lang) async {
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



