import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;


class ResponsiveWeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size screenSize = MediaQuery.of(context).size;
    double searchBarHeight = screenSize.height * 0.1;
    double cityAndWeatherHeight = screenSize.height * 0.15;
    double characterImageSize = screenSize.width * 0.5;
    // fetchWeatherData();
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
              ),
            ),
            // City name and weather description
            Container(
              height: cityAndWeatherHeight,
              alignment: Alignment.center,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Lahijan', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('feels like 26°', style: TextStyle(fontSize: 14)), // Subtitle
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
                      child:
                      Image.asset(
                        'assets/images/woman.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Weather condition
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: characterImageSize, // Give fixed width based on the screen width
                    alignment: Alignment.center,
                     child:
                     Column(
                    mainAxisSize: MainAxisSize.min, // Use Min size for column contents
                    children: <Widget>[
                      const Text(
                        '22°-26°',
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20), // Adding some space
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Ensure even spacing
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('T-Shirt', style: TextStyle(fontSize: 16)),
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
                              Text('Sneakers', style: TextStyle(fontSize: 16)),
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
}

void fetchWeatherData() async {
  var lat = "34.64157640";
  var lon = "50.87460350";
  var apiKey = "62b4a7c51099a2158b77f99c9591405b";

  var url = Uri.parse('https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$apiKey');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    print('ssssss $jsonData');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
