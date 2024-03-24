import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  void checkCharacterSelected() async {
    final prefs = await SharedPreferences.getInstance();
    final isCharacterSelected = prefs.getString('character') != null;
    if (isCharacterSelected) {
      emit(CharacterSelected());
    } else {
      emit(CharacterNotSelected());
    }
  }
}

class Localization {
  Localization(this.locale);

  final Locale locale;
  Map<String, String> _localizedStrings = {};

  static Localization of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization)!;
  }

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}

class LocalizationDelegate extends LocalizationsDelegate<Localization> {
  const LocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'fa'].contains(locale.languageCode);

  @override
  Future<Localization> load(Locale locale) async {
    Localization localization = Localization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationDelegate old) => false;
}