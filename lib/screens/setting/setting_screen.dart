import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../avatar/character_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}
class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('Character'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterScreen()),);
                // Navigate to Character settings
              },
            ),

            ListTile(
              title: Text('Language'),
              subtitle: Text('English'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to Language settings
              },
            ),
            ListTile(
              title: Text('Location'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to Location settings
              },
            ),

            ListTile(
              title: Text('Share'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Share the app
              },
            ),

            ListTile(
              title: Text('Contact Support'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Contact Support
              },
            ),

          ],
        ).toList(),
      ),
    );
  }
}
