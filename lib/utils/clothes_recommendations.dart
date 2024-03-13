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
var dshdbdj = [

  ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
  ClothingModel(name: 'Dress', image: ['dress1', 'dress2','dress3']),
  ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
  ClothingModel(name: 'Jumpsuit', image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
  ClothingModel(name: 'Blouse', image: ['blouse1', 'blouse2']),
  ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
  ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
  ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
  ClothingModel(name: 'Pants', image: ['pants1', 'pants2', 'pants3']),
  ClothingModel(name: 'Jacket', image: ['jacket1', 'jacket2']),
  ClothingModel(name: 'Coat', image: ['coat1', 'coat2','coat3']),
  ClothingModel(name: 'Sweater', image: ['sweater1', 'sweater2','sweater3']),
  ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
  ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),

  ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
  ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
  ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
  ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),
  ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2','trainer3']),
];


Map<WeatherConditions, Map<WeatherType, List<ClothingModel>>>
    clothesRecommendations = {
  WeatherConditions.Freezing: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Drizzle: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Rain: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Snow: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Clear: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),

      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Clouds: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ]
  },
  WeatherConditions.Cool: {
    WeatherType.Thunderstorm: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Jacket', image: ['jacket1', 'jacket2']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Drizzle: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Jacket', image: ['jacket1', 'jacket2']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Rain: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Snow: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Coat', image: ['coat1', 'coat2', 'coat3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Jacket', image: ['jacket1', 'jacket2']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Clear: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Clouds: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),
      ClothingModel(name: 'Jacket', image: ['jacket1', 'jacket2']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ]
  },
  WeatherConditions.Moderate: {
    WeatherType.Thunderstorm: [
       ClothingModel(name: 'Sweater', image: ['sweater1', 'sweater2','sweater3']),
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),

      ClothingModel(
          name: 'Trainer', image: ['trainer1', 'trainer2', 'trainer3']),
    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Jumpsuit', image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(
          name: 'Trainer', image: ['trainer1', 'trainer2', 'trainer3']),
    ],
    WeatherType.Rain: [
      ClothingModel(
          name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Hoodie', image: ['hoodie1', 'hoodie2','hoodie3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Jacket', image: ['jacket1', 'jacket2']),
      ClothingModel(name: 'Cardigan', image: ['cardigan1', 'cardigan2']),
      ClothingModel(name: 'Sweater', image: ['sweater1', 'sweater2', 'sweater3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),
    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),

      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),

      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),

      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2', 'trainer3']),
    ],
    WeatherType.Clear: [
       ClothingModel(name: 'Sweater', image: ['sweater1', 'sweater2','sweater3']),

      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),

      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2', 'trainer3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Cardigan', image: ['cardigan1' , 'cardigan2']),

      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),

      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2', 'trainer3']),
    ]
  },
  WeatherConditions.Balanced: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),

    ],
    WeatherType.Drizzle: [
       ClothingModel(name: 'Blouse', image: ['blouse1', 'blouse2']),
      ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),

    ],
    WeatherType.Rain: [
 ClothingModel(name: 'Blouse', image: ['blouse1', 'blouse2']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2','trainer3']),

    ],
    WeatherType.Snow: [
       ClothingModel(name: 'Sweater', image: ['sweater1', 'sweater2','sweater3']),

      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),

      ClothingModel(name: 'Boot', image: ['boot1', 'boot2']),

    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Jumpsuit', image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),

      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),

    ],
    WeatherType.Clear: [
       ClothingModel(name: 'Dress', image: ['dress1', 'dress2','dress3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),

    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
       ClothingModel(name: 'Jacket', image: ['jacket1', 'jacket2']),

      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),

    ]
  },
  WeatherConditions.Warm: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),

    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Blouse', image: ['blouse1', 'blouse2']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2','trainer3']),

    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Blouse', image: ['blouse1', 'blouse2']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2','trainer3']),

    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),

    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),

    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Blouse', image: ['blouse1', 'blouse2']),
      ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),

    ]
  },
  WeatherConditions.Hot: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Jumpsuit', image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Dress', image: ['dress1', 'dress2','dress3']),
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2','trainer3']),

    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
      ClothingModel(name: 'Pants', image: ['pants1', 'pants2','pants3']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2','trainer3']),

    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'Trainer', image: ['trainer1', 'trainer2','trainer3']),

    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Dress', image: ['dress1', 'dress2','dress3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),

    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Blouse', image: ['blouse1', 'blouse2']),
      ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),

    ]
  },
  WeatherConditions.VeryHot: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Drizzle: [
      ClothingModel(name: 'Dress', image: ['dress1', 'dress2','dress3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Snow: [
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Atmosphere: [
      ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2', 'skirt3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Dress', image: ['dress1', 'dress2','dress3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),
    ]
  },
  WeatherConditions.ExtremeHeat: {
    WeatherType.Thunderstorm: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Drizzle: [

      ClothingModel(name: 'Jumpsuit', image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Rain: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Snow: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),

    ],
    WeatherType.Atmosphere: [
            ClothingModel(name: 'Skirt', image: ['skirt1', 'skirt2']),
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),
    ],
    WeatherType.Clear: [
      ClothingModel(name: 'Top', image: ['top1', 'top2', 'top3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'High Heel', image: ['high_heel1', 'high_heel2', 'high_heel3']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),
    ],
    WeatherType.Clouds: [
      ClothingModel(name: 'Shirt', image: ['shirt1', 'shirt2','shirt3']),
      ClothingModel(name: 'Jumpsuit', image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
      ClothingModel(name: 'Shorts', image: ['shorts1', 'shorts2']),
      ClothingModel(name: 'Flat', image: ['flat1', 'flat2']),
      ClothingModel(name: 'Sandal', image: ['sandal1', 'sandal2', 'sandal3']),
    ]
  }
};
