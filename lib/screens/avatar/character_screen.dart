import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_wear/screens/main/nav_screen.dart';
import '../../models/character_model.dart';
import '../../utils/character_list.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  GenderOptionModel? selectedGenderOption;

  void selectGenderOption(GenderOptionModel option) {
    setState(() {
      selectedGenderOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(character.character.length, (index) {
                return CharacterWidget(index: index, genderOption: character.character[index],onSelect: selectGenderOption);
              }),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                DefineButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class CharacterWidget extends StatelessWidget {
  final int index;
  final GenderOptionModel genderOption;
  final Function(GenderOptionModel) onSelect;

  CharacterWidget({required this.index , required this.genderOption, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelect(genderOption);
        print("Selected character at $index: ${genderOption.gender.name}");
        saveCharacter(genderOption);
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.grey[300],
        ),
        child: Center(
          child: Text(genderOption.gender.name),
        ),
      ),
    );
  }
}


class DefineButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavScreen()));
      },
      child: Text('Define'),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
      ),
    );
  }
}

Future<void> saveCharacter(GenderOptionModel character) async{
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('character', character.gender.name);
}