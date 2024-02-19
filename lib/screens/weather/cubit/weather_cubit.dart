import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:weather_wear/models/weather_models.dart';

import '../../../models/test_model.dart';
import '../../../repositories/call_to_api.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  Future<void> loadWeather({required bool isCurrentCity, required String cityName}) async {
    try {
      emit(WeatherLoading());

      final weather = await CallToApi().callWeatherAPi(isCurrentCity, cityName);
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
  print('Sam222 ${dailyForecasts.values.toList()}');
  return dailyForecasts.values.toList();
}