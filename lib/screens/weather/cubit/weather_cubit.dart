import 'package:bloc/bloc.dart';

import '../../../models/weather_model.dart';
import '../../../repositories/call_to_api.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  Future<void> loadWeather({required bool isCurrentCity, required String cityName}) async {
    try {
      emit(WeatherLoading());

      final weather = await CallToApi().callWeatherAPi(isCurrentCity, cityName);

      print("sam_weather${weather.city!.name.toString()}");

      emit(WeatherLoaded(weather));

    } catch (error) {
      emit(WeatherError(error.toString()));
    }
  }


}

List<ForecastEntry> getDailyForecasts(List<ForecastEntry> forecasts) {
  Map<String, ForecastEntry> dailyForecasts = {};

  for (var forecast in forecasts) {
    var dateString = forecast.dtTxt!.split(' ')[0];

    if (!dailyForecasts.containsKey(dateString)) {
      dailyForecasts[dateString] = forecast;
    }
  }
  return dailyForecasts.values.toList();
}