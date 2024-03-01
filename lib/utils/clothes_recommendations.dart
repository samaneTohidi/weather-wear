import '../models/clothing_model.dart';

enum WeatherConditions {
  Freezing,
  Cool,
  Moderate,
  Balanced,
  Warm,
  Hot,
  VeryHot,
  ExtremeHeat,
}

enum WeatherType {
  Thunderstorm,
  Drizzle,
  Rain,
  Snow,
  Atmosphere,
  Clear,
  Clouds,
}

Map<WeatherConditions, Map<WeatherType, List<ClothingModel>>>
    clothesRecommendations = {
  WeatherConditions.Freezing: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ]
  },
  WeatherConditions.Cool: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ]
  },
  WeatherConditions.Moderate: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jeans', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),

    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Coats', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Sweater', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Pants', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Boots', image: ['vest1', 'vest3']),
    ]
  },
  WeatherConditions.Balanced: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ]
  },
  WeatherConditions.Warm: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
      // Add more items
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ]
  },
  WeatherConditions.Hot: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Jackets', image: ['vest1', 'vest3']),
      // Add more items
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ]
  },
  WeatherConditions.VeryHot: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
      // Add more items
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ]
  },
  WeatherConditions.ExtremeHeat: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
      // Add more items
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Shirts', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Dresses', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Skirts  ', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Jumpsuits', image: ['vest1', 'vest3']),
      ClothingModel(name: 'Blouses', image: ['vest1', 'vest3']),
    ]
  }
};
