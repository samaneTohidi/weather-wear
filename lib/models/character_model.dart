class CharacterModel {
  final List<GenderOptionModel> character;

  CharacterModel({required this.character});
}

class GenderOptionModel {
  final Gender gender;
  final List<Hair> hair;
  final List<Eyebrow> eyebrow;
  final List<Beard>? beard;

  GenderOptionModel(
      {required this.gender,
      required this.hair,
      required this.eyebrow,
      this.beard});
}

class Gender {
  final String name;
  final List<String> skinColors;
  Gender({required this.name, required this.skinColors});
}

class Hair {
  final List<String> hairStyles;
  final List<String> hairColors;
  Hair({required this.hairStyles, required this.hairColors});
}

class Eyebrow {
  final List<String> eyebrowStyle;
  final List<String> eyebrowColors;

  Eyebrow({required this.eyebrowStyle, required this.eyebrowColors});
}

class Beard {
  final List<String> beardStyle;
  final List<String> beardColors;
  Beard({required this.beardStyle, required this.beardColors});
}
