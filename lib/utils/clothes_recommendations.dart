import 'package:flutter/cupertino.dart';

import '../models/clothing_model.dart';
import '../screens/main/cubit/main_cubit.dart';

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
var sampleData = [

  ClothingModel(name: "Shirt", image: ['shirt1', 'shirt2','shirt3']),
  ClothingModel(name: "Dress", image: ['dress1', 'dress2','dress3']),
  ClothingModel(name: "Skirt", image: ['skirt1', 'skirt2', 'skirt3']),
  ClothingModel(name: "Jumpsuit", image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
  ClothingModel(name: "Blouse", image: ['blouse1', 'blouse2']),
  ClothingModel(name: "Skirt", image: ['skirt1', 'skirt2', 'skirt3']),
  ClothingModel(name: "Top", image: ['top1', 'top2', 'top3']),
  ClothingModel(name: "Shorts", image: ['shorts1', 'shorts2']),
  ClothingModel(name: "Pants", image: ['pants1', 'pants2', 'pants3']),
  ClothingModel(name: "Jacket", image: ['jacket1', 'jacket2']),
  ClothingModel(name: "Coat", image: ['coat1', 'coat2','coat3']),
  ClothingModel(name: 'Sweater', image: ['sweater1', 'sweater2','sweater3']),
  ClothingModel(name: "Hoodie", image: ['hoodie1', 'hoodie2','hoodie3']),
  ClothingModel(name: "Cardigan", image: ['cardigan1' , 'cardigan2']),

  ClothingModel(name: "Boot", image: ['boot1', 'boot2']),
  ClothingModel(name: "HighHeel", image: ['high_heel1', 'high_heel2', 'high_heel3']),
  ClothingModel(name: "Flat", image: ['flat1', 'flat2']),
  ClothingModel(name: "Sandal", image: ['sandal1', 'sandal2', 'sandal3']),
  ClothingModel(name: "Trainer", image: ['trainer1', 'trainer2','trainer3']),
];



class ClothingRecommendations {
  final BuildContext context;

  ClothingRecommendations(this.context);

  Map<WeatherConditions, Map<WeatherType, List<ClothingModel>>> get clothesRecommendations {
    return {
      WeatherConditions.Freezing: {
        WeatherType.Thunderstorm: [
          ClothingModel(name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Drizzle: [
          ClothingModel(name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Rain: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Snow: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Atmosphere: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Clear: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),

          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Clouds: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ]
      },
      WeatherConditions.Cool: {
        WeatherType.Thunderstorm: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Jacket"), image: ['jacket1', 'jacket2']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Drizzle: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Jacket"), image: ['jacket1', 'jacket2']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Rain: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Snow: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Coat"), image: ['coat1', 'coat2', 'coat3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Atmosphere: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Jacket"), image: ['jacket1', 'jacket2']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Clear: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Clouds: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Jacket"), image: ['jacket1', 'jacket2']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ]
      },
      WeatherConditions.Moderate: {
        WeatherType.Thunderstorm: [
          ClothingModel(name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2','sweater3']),
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),

          ClothingModel(
              name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2', 'trainer3']),
        ],
        WeatherType.Drizzle: [
          ClothingModel(name: Localization.of(context).translate("Jumpsuit"), image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(
              name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2', 'trainer3']),
        ],
        WeatherType.Rain: [
          ClothingModel(
              name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Hoodie"), image: ['hoodie1', 'hoodie2','hoodie3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Snow: [
          ClothingModel(name: Localization.of(context).translate("Jacket"), image: ['jacket1', 'jacket2']),
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1', 'cardigan2']),
          ClothingModel(name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2', 'sweater3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),
        ],
        WeatherType.Atmosphere: [
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),

          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),

          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),

          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2', 'trainer3']),
        ],
        WeatherType.Clear: [
          ClothingModel(name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2','sweater3']),

          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),

          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2', 'trainer3']),
        ],
        WeatherType.Clouds: [
          ClothingModel(name: Localization.of(context).translate("Cardigan"), image: ['cardigan1' , 'cardigan2']),

          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),

          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2', 'trainer3']),
        ]
      },
      WeatherConditions.Balanced: {
        WeatherType.Thunderstorm: [
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),

        ],
        WeatherType.Drizzle: [
          ClothingModel(name: Localization.of(context).translate("Blouse"), image: ['blouse1', 'blouse2']),
          ClothingModel(name: Localization.of(context).translate("Skirt"), image: ['skirt1', 'skirt2', 'skirt3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),

        ],
        WeatherType.Rain: [
          ClothingModel(name: Localization.of(context).translate("Blouse"), image: ['blouse1', 'blouse2']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2','trainer3']),

        ],
        WeatherType.Snow: [
          ClothingModel(name: Localization.of(context).translate("Sweater"), image: ['sweater1', 'sweater2','sweater3']),

          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),

          ClothingModel(name: Localization.of(context).translate("Boot"), image: ['boot1', 'boot2']),

        ],
        WeatherType.Atmosphere: [
          ClothingModel(name: Localization.of(context).translate("Jumpsuit"), image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),

          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),

        ],
        WeatherType.Clear: [
          ClothingModel(name: Localization.of(context).translate("Dress"), image: ['dress1', 'dress2','dress3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),

        ],
        WeatherType.Clouds: [
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Jacket"), image: ['jacket1', 'jacket2']),

          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),

        ]
      },
      WeatherConditions.Warm: {
        WeatherType.Thunderstorm: [
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),

        ],
        WeatherType.Drizzle: [
          ClothingModel(name: Localization.of(context).translate("Blouse"), image: ['blouse1', 'blouse2']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Rain: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2','trainer3']),

        ],
        WeatherType.Snow: [
          ClothingModel(name: Localization.of(context).translate("Blouse"), image: ['blouse1', 'blouse2']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2','trainer3']),

        ],
        WeatherType.Atmosphere: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),

        ],
        WeatherType.Clear: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Skirt"), image: ['skirt1', 'skirt2', 'skirt3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),

        ],
        WeatherType.Clouds: [
          ClothingModel(name: Localization.of(context).translate("Blouse"), image: ['blouse1', 'blouse2']),
          ClothingModel(name: Localization.of(context).translate("Skirt"), image: ['skirt1', 'skirt2', 'skirt3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),

        ]
      },
      WeatherConditions.Hot: {
        WeatherType.Thunderstorm: [
          ClothingModel(name: Localization.of(context).translate("Jumpsuit"), image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Drizzle: [
          ClothingModel(name: Localization.of(context).translate("Dress"), image: ['dress1', 'dress2','dress3']),
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Rain: [
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2','trainer3']),

        ],
        WeatherType.Snow: [
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Pants"), image: ['pants1', 'pants2','pants3']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2','trainer3']),

        ],
        WeatherType.Atmosphere: [
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("Trainer"), image: ['trainer1', 'trainer2','trainer3']),

        ],
        WeatherType.Clear: [
          ClothingModel(name: Localization.of(context).translate("Dress"), image: ['dress1', 'dress2','dress3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),

        ],
        WeatherType.Clouds: [
          ClothingModel(name: Localization.of(context).translate("Blouse"), image: ['blouse1', 'blouse2']),
          ClothingModel(name: Localization.of(context).translate("Skirt"), image: ['skirt1', 'skirt2', 'skirt3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),

        ]
      },
      WeatherConditions.VeryHot: {
        WeatherType.Thunderstorm: [
          ClothingModel(name: Localization.of(context).translate("Skirt"), image: ['skirt1', 'skirt2', 'skirt3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Drizzle: [
          ClothingModel(name: Localization.of(context).translate("Dress"), image: ['dress1', 'dress2','dress3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Rain: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Snow: [
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Atmosphere: [
          ClothingModel(name: Localization.of(context).translate("Skirt"), image: ['skirt1', 'skirt2', 'skirt3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),
        ],
        WeatherType.Clear: [
          ClothingModel(name: Localization.of(context).translate("Dress"), image: ['dress1', 'dress2','dress3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),
        ],
        WeatherType.Clouds: [
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),
        ]
      },
      WeatherConditions.ExtremeHeat: {
        WeatherType.Thunderstorm: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Drizzle: [

          ClothingModel(name: Localization.of(context).translate("Jumpsuit"), image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Rain: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Snow: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),

        ],
        WeatherType.Atmosphere: [
          ClothingModel(name: Localization.of(context).translate("Skirt"), image: ['skirt1', 'skirt2']),
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),
        ],
        WeatherType.Clear: [
          ClothingModel(name: Localization.of(context).translate("Top"), image: ['top1', 'top2', 'top3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("HighHeel"), image: ['high_heel1', 'high_heel2', 'high_heel3']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),
        ],
        WeatherType.Clouds: [
          ClothingModel(name: Localization.of(context).translate("Shirt"), image: ['shirt1', 'shirt2','shirt3']),
          ClothingModel(name: Localization.of(context).translate("Jumpsuit"), image: ['jumpsuit1', 'jumpsuit2', 'jumpsuit3']),
          ClothingModel(name: Localization.of(context).translate("Shorts"), image: ['shorts1', 'shorts2']),
          ClothingModel(name: Localization.of(context).translate("Flat"), image: ['flat1', 'flat2']),
          ClothingModel(name: Localization.of(context).translate("Sandal"), image: ['sandal1', 'sandal2', 'sandal3']),
        ]
      }    };
  }
}










