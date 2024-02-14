import '../models/character_model.dart';

final character = CharacterModel(character: [female, male]);

final female = GenderOptionModel(
  gender: Gender(name: "female", skinColors: [" white ", "white"]),
  hair: [
    Hair(
        hairStyles: ["Long and Straight", "Short and Curly", "Braided"],
        hairColors: ["red", "yellow"]),
  ],
  eyebrow: [
    Eyebrow(
        eyebrowStyle: ["Natural", "Arched", "Thick"],
        eyebrowColors: ["red", "yellow", "brown"]),
  ],
);

final male = GenderOptionModel(
    gender: Gender(name: "male", skinColors: [" white ", "white"]),
    hair: [
      Hair(
          hairStyles: ["Short and Neat", "Long and Loose", "Fade"],
          hairColors: ["black", "brown"]),
    ],
    eyebrow: [
      Eyebrow(
          eyebrowStyle: ["Natural", "Thin", "Thick"],
          eyebrowColors: ["black", "brown"]),
    ],
    beard: [
      Beard(
          beardStyle: ["Full Beard", "Goatee", "Clean Shaven"],
          beardColors: ["black", "brown"]),
    ]);
