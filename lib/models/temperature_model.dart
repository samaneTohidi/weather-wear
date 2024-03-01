class TemperatureModel {
  final Cold cold;
  final Moderate moderate;
  final Warm warm;
  final Extreme extreme;

  TemperatureModel(
      {required this.cold,
      required this.moderate,
      required this.warm,
      required this.extreme});
}

class Cold {
  final List<String> title;
  Cold({required this.title});
}
class Moderate {
  final List<String> title;
  Moderate({required this.title});
}
class Warm {
  final List<String> title;
  Warm({required this.title});
}
class Extreme {
  final List<String> title;
  Extreme({required this.title});
}

final temperatureList = TemperatureModel(
    cold: Cold(title: ['Freezing', 'Cool']),
    moderate: Moderate(title: ['Cool', 'Moderate', 'Balanced']),
    warm: Warm(title: ['Warm', 'Hot', 'Very Hot']),
    extreme: Extreme(title: ['Extreme Cold', 'Extreme heat']));


