import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/clothing_model.dart';
import '../../../models/weather_conditions_model.dart';
import '../../../models/weather_model.dart';
import '../../../repositories/call_to_api.dart';
import '../../../utils/clothes_recommendations.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  Future<void> loadWeather(
      {required bool isCurrentCity, required String cityName}) async {
    try {
      emit(WeatherLoading());

      final weather = await CallToApi().callWeatherAPi(isCurrentCity, cityName);
      emit(WeatherLoaded(weather));
    } catch (error) {
      emit(WeatherError(error.toString()));
    }
  }

  Future<void> checkCharacterSelected() async {
    final prefs = await SharedPreferences.getInstance();
    final isCharacterSelected = prefs.getString('character') ?? 'Woman';
    emit(CharacterSelected(isCharacterSelected));
  }
}

WeatherConditionsModel updateWeather(int currTemp, String weatherCondition) {
  String tempDescription = _getTemperatureDescription(currTemp);
  return WeatherConditionsModel(
      currTemp: currTemp,
      weatherType: tempDescription,
      weatherCondition: weatherCondition);
}

List<ClothingModel> getClothesRecommendation(String weatherConditionStr, String weatherTypeStr) {
  WeatherConditions condition = getWeatherCondition(weatherConditionStr);
  WeatherType type = getWeatherType(weatherTypeStr);

  return clothesRecommendations[condition]?[type] ?? [];
}

List<ForecastEntry> getDailyForecasts(List<ForecastEntry> forecasts) {
  Map<String, List<ForecastEntry>> dailyForecastsMap = {};

  for (var forecast in forecasts) {
    var dateString = forecast.dtTxt!.split(' ')[0];
    dailyForecastsMap.putIfAbsent(dateString, () => []).add(forecast);
  }

  List<ForecastEntry> dailyForecasts = [];

  dailyForecastsMap.forEach((date, forecasts) {
    num minTemp = forecasts.first.main!.tempMin!;
    num maxTemp = forecasts.first.main!.tempMax!;
    for (var forecast in forecasts) {
      if (forecast.main!.tempMin! < minTemp) minTemp = forecast.main!.tempMin!;
      if (forecast.main!.tempMax! > maxTemp) maxTemp = forecast.main!.tempMax!;
    }

    var dailyForecast = forecasts.first.copyWith(
      main: forecasts.first.main!.copyWith(
        tempMin: minTemp,
        tempMax: maxTemp,
      ),
    );

    dailyForecasts.add(dailyForecast);
  });

  return dailyForecasts;
}

String _getTemperatureDescription(int currTemp) {
  if (currTemp <= 0) return "Freezing";
  if (currTemp <= 10) return "Cool";
  if (currTemp <= 15) return "Cool";
  if (currTemp <= 20) return "Moderate";
  if (currTemp <= 25) return "Balanced";
  if (currTemp <= 30) return "Warm";
  if (currTemp <= 35) return "Hot";
  if (currTemp <= 40) return "Very Hot";
  return "Extreme heat";
}
WeatherConditions getWeatherCondition(String description) {
  switch (description.toLowerCase()) {
    case "freezing":
      return WeatherConditions.Freezing;
    case "cool":
      return WeatherConditions.Cool;
    case "moderate":
      return WeatherConditions.Moderate;
    case "balanced":
      return WeatherConditions.Balanced;
    case "warm":
      return WeatherConditions.Warm;
    case "hot":
      return WeatherConditions.Hot;
    case "very hot":
      return WeatherConditions.VeryHot;
    case "extreme heat":
      return WeatherConditions.ExtremeHeat;
    default:
      return WeatherConditions.Moderate; // Default or throw an error
  }
}

WeatherType getWeatherType(String description) {
  switch (description.toLowerCase()) {
    case "thunderstorm":
      return WeatherType.Thunderstorm;
    case "drizzle":
      return WeatherType.Drizzle;
    case "rain":
      return WeatherType.Rain;
    case "snow":
      return WeatherType.Snow;
    case "atmosphere":
      return WeatherType.Atmosphere;
    case "clear":
      return WeatherType.Clear;
    case "clouds":
      return WeatherType.Clouds;
    default:
      return WeatherType.Clouds; // Default or throw an error
  }
}
