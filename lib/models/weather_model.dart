import 'dart:convert';
/// cod : "200"
/// message : 0
/// cnt : 40
/// list : [{"dt":1708614000,"main":{"temp":282.78,"feels_like":280.65,"temp_min":281.65,"temp_max":282.78,"pressure":1011,"sea_level":1011,"grnd_level":923,"humidity":64,"temp_kf":1.13},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":99},"wind":{"speed":4.1,"deg":200,"gust":10.37},"visibility":10000,"pop":0.31,"rain":{"3h":0.12},"sys":{"pod":"d"},"dt_txt":"2024-02-22 15:00:00"},{"dt":1708624800,"main":{"temp":281.51,"feels_like":279.85,"temp_min":280.59,"temp_max":281.51,"pressure":1009,"sea_level":1009,"grnd_level":921,"humidity":72,"temp_kf":0.92},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":2.76,"deg":183,"gust":6.45},"visibility":10000,"pop":0.23,"rain":{"3h":0.12},"sys":{"pod":"n"},"dt_txt":"2024-02-22 18:00:00"},{"dt":1708635600,"main":{"temp":280.22,"feels_like":277.25,"temp_min":280.22,"temp_max":280.22,"pressure":1005,"sea_level":1005,"grnd_level":919,"humidity":77,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":4.61,"deg":188,"gust":11.33},"visibility":10000,"pop":0.21,"sys":{"pod":"n"},"dt_txt":"2024-02-22 21:00:00"},{"dt":1708646400,"main":{"temp":280.45,"feels_like":277.71,"temp_min":280.45,"temp_max":280.45,"pressure":1001,"sea_level":1001,"grnd_level":916,"humidity":78,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":4.24,"deg":190,"gust":12.36},"visibility":10000,"pop":0.21,"rain":{"3h":0.26},"sys":{"pod":"n"},"dt_txt":"2024-02-23 00:00:00"},{"dt":1708657200,"main":{"temp":280.52,"feels_like":277.61,"temp_min":280.52,"temp_max":280.52,"pressure":997,"sea_level":997,"grnd_level":912,"humidity":80,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":4.64,"deg":180,"gust":12.81},"visibility":10000,"pop":0.21,"sys":{"pod":"n"},"dt_txt":"2024-02-23 03:00:00"},{"dt":1708668000,"main":{"temp":280.88,"feels_like":277.92,"temp_min":280.88,"temp_max":280.88,"pressure":996,"sea_level":996,"grnd_level":911,"humidity":83,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":4.95,"deg":192,"gust":13.91},"visibility":10000,"pop":0.25,"rain":{"3h":0.27},"sys":{"pod":"n"},"dt_txt":"2024-02-23 06:00:00"},{"dt":1708678800,"main":{"temp":281.91,"feels_like":278.93,"temp_min":281.91,"temp_max":281.91,"pressure":997,"sea_level":997,"grnd_level":912,"humidity":71,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":98},"wind":{"speed":5.67,"deg":216,"gust":15.93},"visibility":10000,"pop":0.43,"rain":{"3h":0.35},"sys":{"pod":"d"},"dt_txt":"2024-02-23 09:00:00"},{"dt":1708689600,"main":{"temp":282.97,"feels_like":281.06,"temp_min":282.97,"temp_max":282.97,"pressure":997,"sea_level":997,"grnd_level":913,"humidity":55,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":99},"wind":{"speed":3.72,"deg":230,"gust":9.44},"visibility":10000,"pop":0.53,"rain":{"3h":0.16},"sys":{"pod":"d"},"dt_txt":"2024-02-23 12:00:00"},{"dt":1708700400,"main":{"temp":281.64,"feels_like":279.9,"temp_min":281.64,"temp_max":281.64,"pressure":998,"sea_level":998,"grnd_level":913,"humidity":45,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":100},"wind":{"speed":2.91,"deg":233,"gust":5.58},"visibility":10000,"pop":0.15,"sys":{"pod":"d"},"dt_txt":"2024-02-23 15:00:00"},{"dt":1708711200,"main":{"temp":277.49,"feels_like":275.36,"temp_min":277.49,"temp_max":277.49,"pressure":1000,"sea_level":1000,"grnd_level":914,"humidity":70,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":76},"wind":{"speed":2.4,"deg":227,"gust":4.45},"visibility":10000,"pop":0.12,"sys":{"pod":"n"},"dt_txt":"2024-02-23 18:00:00"},{"dt":1708722000,"main":{"temp":277.16,"feels_like":274.14,"temp_min":277.16,"temp_max":277.16,"pressure":1002,"sea_level":1002,"grnd_level":915,"humidity":75,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"clouds":{"all":20},"wind":{"speed":3.46,"deg":200,"gust":6.83},"visibility":10000,"pop":0.05,"sys":{"pod":"n"},"dt_txt":"2024-02-23 21:00:00"},{"dt":1708732800,"main":{"temp":276.85,"feels_like":273.57,"temp_min":276.85,"temp_max":276.85,"pressure":1003,"sea_level":1003,"grnd_level":916,"humidity":72,"temp_kf":0},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"clouds":{"all":18},"wind":{"speed":3.75,"deg":200,"gust":7.95},"visibility":10000,"pop":0.19,"sys":{"pod":"n"},"dt_txt":"2024-02-24 00:00:00"},{"dt":1708743600,"main":{"temp":276.5,"feels_like":273.08,"temp_min":276.5,"temp_max":276.5,"pressure":1004,"sea_level":1004,"grnd_level":917,"humidity":69,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":1},"wind":{"speed":3.84,"deg":219,"gust":8.41},"visibility":10000,"pop":0.21,"sys":{"pod":"n"},"dt_txt":"2024-02-24 03:00:00"},{"dt":1708754400,"main":{"temp":276.02,"feels_like":273.36,"temp_min":276.02,"temp_max":276.02,"pressure":1006,"sea_level":1006,"grnd_level":919,"humidity":74,"temp_kf":0},"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01n"}],"clouds":{"all":5},"wind":{"speed":2.69,"deg":196,"gust":6.28},"visibility":10000,"pop":0.16,"sys":{"pod":"n"},"dt_txt":"2024-02-24 06:00:00"},{"dt":1708765200,"main":{"temp":279.92,"feels_like":277.86,"temp_min":279.92,"temp_max":279.92,"pressure":1008,"sea_level":1008,"grnd_level":921,"humidity":62,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":87},"wind":{"speed":2.88,"deg":173,"gust":5.53},"visibility":10000,"pop":0.2,"sys":{"pod":"d"},"dt_txt":"2024-02-24 09:00:00"},{"dt":1708776000,"main":{"temp":281.33,"feels_like":281.33,"temp_min":281.33,"temp_max":281.33,"pressure":1007,"sea_level":1007,"grnd_level":921,"humidity":55,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":93},"wind":{"speed":1.3,"deg":257,"gust":3.19},"visibility":10000,"pop":0.41,"rain":{"3h":0.34},"sys":{"pod":"d"},"dt_txt":"2024-02-24 12:00:00"},{"dt":1708786800,"main":{"temp":279.41,"feels_like":278.56,"temp_min":279.41,"temp_max":279.41,"pressure":1008,"sea_level":1008,"grnd_level":921,"humidity":69,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":1.48,"deg":126,"gust":2.36},"visibility":10000,"pop":0.68,"rain":{"3h":0.69},"sys":{"pod":"d"},"dt_txt":"2024-02-24 15:00:00"},{"dt":1708797600,"main":{"temp":276.4,"feels_like":274.7,"temp_min":276.4,"temp_max":276.4,"pressure":1010,"sea_level":1010,"grnd_level":922,"humidity":85,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":85},"wind":{"speed":1.81,"deg":176,"gust":2.53},"visibility":10000,"pop":0.62,"rain":{"3h":0.18},"sys":{"pod":"n"},"dt_txt":"2024-02-24 18:00:00"},{"dt":1708808400,"main":{"temp":275.76,"feels_like":273.29,"temp_min":275.76,"temp_max":275.76,"pressure":1011,"sea_level":1011,"grnd_level":923,"humidity":82,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":46},"wind":{"speed":2.43,"deg":207,"gust":3.19},"visibility":10000,"pop":0.15,"sys":{"pod":"n"},"dt_txt":"2024-02-24 21:00:00"},{"dt":1708819200,"main":{"temp":275.23,"feels_like":273.14,"temp_min":275.23,"temp_max":275.23,"pressure":1011,"sea_level":1011,"grnd_level":923,"humidity":79,"temp_kf":0},"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"clouds":{"all":69},"wind":{"speed":1.98,"deg":210,"gust":2.58},"visibility":10000,"pop":0.08,"sys":{"pod":"n"},"dt_txt":"2024-02-25 00:00:00"},{"dt":1708830000,"main":{"temp":274.64,"feels_like":272.63,"temp_min":274.64,"temp_max":274.64,"pressure":1011,"sea_level":1011,"grnd_level":923,"humidity":80,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":87},"wind":{"speed":1.84,"deg":212,"gust":1.7},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-02-25 03:00:00"},{"dt":1708840800,"main":{"temp":273.93,"feels_like":271.8,"temp_min":273.93,"temp_max":273.93,"pressure":1011,"sea_level":1011,"grnd_level":922,"humidity":83,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":50},"wind":{"speed":1.84,"deg":219,"gust":1.7},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-02-25 06:00:00"},{"dt":1708851600,"main":{"temp":278.94,"feels_like":278.94,"temp_min":278.94,"temp_max":278.94,"pressure":1011,"sea_level":1011,"grnd_level":924,"humidity":64,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":25},"wind":{"speed":1.2,"deg":177,"gust":2.22},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-02-25 09:00:00"},{"dt":1708862400,"main":{"temp":281.91,"feels_like":281.91,"temp_min":281.91,"temp_max":281.91,"pressure":1008,"sea_level":1008,"grnd_level":922,"humidity":47,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"clouds":{"all":37},"wind":{"speed":1.31,"deg":193,"gust":4.36},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-02-25 12:00:00"},{"dt":1708873200,"main":{"temp":281.2,"feels_like":280.39,"temp_min":281.2,"temp_max":281.2,"pressure":1007,"sea_level":1007,"grnd_level":921,"humidity":46,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":85},"wind":{"speed":1.67,"deg":225,"gust":3.82},"visibility":10000,"pop":0,"sys":{"pod":"d"},"dt_txt":"2024-02-25 15:00:00"},{"dt":1708884000,"main":{"temp":277.5,"feels_like":275.25,"temp_min":277.5,"temp_max":277.5,"pressure":1007,"sea_level":1007,"grnd_level":920,"humidity":74,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":92},"wind":{"speed":2.54,"deg":182,"gust":4.55},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-02-25 18:00:00"},{"dt":1708894800,"main":{"temp":276.94,"feels_like":274.57,"temp_min":276.94,"temp_max":276.94,"pressure":1006,"sea_level":1006,"grnd_level":919,"humidity":84,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":2.55,"deg":181,"gust":4.62},"visibility":10000,"pop":0.04,"sys":{"pod":"n"},"dt_txt":"2024-02-25 21:00:00"},{"dt":1708905600,"main":{"temp":276.52,"feels_like":274.32,"temp_min":276.52,"temp_max":276.52,"pressure":1005,"sea_level":1005,"grnd_level":917,"humidity":80,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":2.29,"deg":181,"gust":3.55},"visibility":10000,"pop":0,"sys":{"pod":"n"},"dt_txt":"2024-02-26 00:00:00"},{"dt":1708916400,"main":{"temp":276.53,"feels_like":274.51,"temp_min":276.53,"temp_max":276.53,"pressure":1002,"sea_level":1002,"grnd_level":915,"humidity":87,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":2.11,"deg":170,"gust":4.72},"visibility":10000,"pop":0.66,"rain":{"3h":1.05},"sys":{"pod":"n"},"dt_txt":"2024-02-26 03:00:00"},{"dt":1708927200,"main":{"temp":276.91,"feels_like":274.51,"temp_min":276.91,"temp_max":276.91,"pressure":999,"sea_level":999,"grnd_level":912,"humidity":92,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":2.58,"deg":153,"gust":8.48},"visibility":10000,"pop":0.72,"rain":{"3h":2.31},"sys":{"pod":"d"},"dt_txt":"2024-02-26 06:00:00"},{"dt":1708938000,"main":{"temp":278.55,"feels_like":276.16,"temp_min":278.55,"temp_max":278.55,"pressure":997,"sea_level":997,"grnd_level":912,"humidity":91,"temp_kf":0},"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":2.97,"deg":187,"gust":8.51},"visibility":10000,"pop":0.84,"rain":{"3h":3.92},"sys":{"pod":"d"},"dt_txt":"2024-02-26 09:00:00"},{"dt":1708948800,"main":{"temp":281.03,"feels_like":279.33,"temp_min":281.03,"temp_max":281.03,"pressure":999,"sea_level":999,"grnd_level":913,"humidity":70,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":97},"wind":{"speed":2.68,"deg":246,"gust":7.79},"visibility":10000,"pop":0.77,"rain":{"3h":0.2},"sys":{"pod":"d"},"dt_txt":"2024-02-26 12:00:00"},{"dt":1708959600,"main":{"temp":278.93,"feels_like":278.93,"temp_min":278.93,"temp_max":278.93,"pressure":1000,"sea_level":1000,"grnd_level":914,"humidity":82,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":{"all":100},"wind":{"speed":0.78,"deg":284,"gust":3.93},"visibility":10000,"pop":0.3,"sys":{"pod":"d"},"dt_txt":"2024-02-26 15:00:00"},{"dt":1708970400,"main":{"temp":277.37,"feels_like":277.37,"temp_min":277.37,"temp_max":277.37,"pressure":1002,"sea_level":1002,"grnd_level":915,"humidity":92,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":100},"wind":{"speed":0.34,"deg":57,"gust":1.31},"visibility":10000,"pop":0.22,"sys":{"pod":"n"},"dt_txt":"2024-02-26 18:00:00"},{"dt":1708981200,"main":{"temp":277.23,"feels_like":277.23,"temp_min":277.23,"temp_max":277.23,"pressure":1004,"sea_level":1004,"grnd_level":917,"humidity":88,"temp_kf":0},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":91},"wind":{"speed":1.28,"deg":193,"gust":2.48},"visibility":10000,"pop":0.09,"sys":{"pod":"n"},"dt_txt":"2024-02-26 21:00:00"},{"dt":1708992000,"main":{"temp":275.2,"feels_like":275.2,"temp_min":275.2,"temp_max":275.2,"pressure":1005,"sea_level":1005,"grnd_level":917,"humidity":90,"temp_kf":0},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"clouds":{"all":50},"wind":{"speed":1.14,"deg":243,"gust":1.37},"visibility":10000,"pop":0.05,"sys":{"pod":"n"},"dt_txt":"2024-02-27 00:00:00"},{"dt":1709002800,"main":{"temp":275.71,"feels_like":275.71,"temp_min":275.71,"temp_max":275.71,"pressure":1006,"sea_level":1006,"grnd_level":918,"humidity":94,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"clouds":{"all":100},"wind":{"speed":0.77,"deg":189,"gust":1.04},"visibility":8451,"pop":0.79,"rain":{"3h":1.22},"sys":{"pod":"n"},"dt_txt":"2024-02-27 03:00:00"},{"dt":1709013600,"main":{"temp":275.47,"feels_like":275.47,"temp_min":275.47,"temp_max":275.47,"pressure":1007,"sea_level":1007,"grnd_level":919,"humidity":92,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":1.15,"deg":253,"gust":1.65},"visibility":10000,"pop":0.86,"rain":{"3h":1.24},"sys":{"pod":"d"},"dt_txt":"2024-02-27 06:00:00"},{"dt":1709024400,"main":{"temp":277.11,"feels_like":276.14,"temp_min":277.11,"temp_max":277.11,"pressure":1008,"sea_level":1008,"grnd_level":921,"humidity":84,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":1.34,"deg":16,"gust":2.21},"visibility":10000,"pop":0.66,"rain":{"3h":0.47},"sys":{"pod":"d"},"dt_txt":"2024-02-27 09:00:00"},{"dt":1709035200,"main":{"temp":278.35,"feels_like":276.49,"temp_min":278.35,"temp_max":278.35,"pressure":1008,"sea_level":1008,"grnd_level":921,"humidity":77,"temp_kf":0},"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":{"all":100},"wind":{"speed":2.27,"deg":7,"gust":2.31},"visibility":10000,"pop":0.71,"rain":{"3h":0.21},"sys":{"pod":"d"},"dt_txt":"2024-02-27 12:00:00"}]
/// city : {"id":3163858,"name":"Zocca","coord":{"lat":44.34,"lon":10.99},"country":"IT","population":4593,"timezone":3600,"sunrise":1708581982,"sunset":1708620793}

WeatherModel testFromJson(String str) => WeatherModel.fromJson(json.decode(str));
String testToJson(WeatherModel data) => json.encode(data.toJson());
class WeatherModel {
  WeatherModel({
      String? cod, 
      num? message, 
      num? cnt, 
      List<ForecastEntry>? list,
      City? city,}){
    _cod = cod;
    _message = message;
    _cnt = cnt;
    _list = list;
    _city = city;
}

  WeatherModel.fromJson(dynamic json) {
    _cod = json['cod'];
    _message = json['message'];
    _cnt = json['cnt'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(ForecastEntry.fromJson(v));
      });
    }
    _city = json['city'] != null ? City.fromJson(json['city']) : null;
  }
  String? _cod;
  num? _message;
  num? _cnt;
  List<ForecastEntry>? _list;
  City? _city;
WeatherModel copyWith({  String? cod,
  num? message,
  num? cnt,
  List<ForecastEntry>? list,
  City? city,
}) => WeatherModel(  cod: cod ?? _cod,
  message: message ?? _message,
  cnt: cnt ?? _cnt,
  list: list ?? _list,
  city: city ?? _city,
);
  String? get cod => _cod;
  num? get message => _message;
  num? get cnt => _cnt;
  List<ForecastEntry>? get list => _list;
  City? get city => _city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cod'] = _cod;
    map['message'] = _message;
    map['cnt'] = _cnt;
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    if (_city != null) {
      map['city'] = _city?.toJson();
    }
    return map;
  }

}

/// id : 3163858
/// name : "Zocca"
/// coord : {"lat":44.34,"lon":10.99}
/// country : "IT"
/// population : 4593
/// timezone : 3600
/// sunrise : 1708581982
/// sunset : 1708620793

City cityFromJson(String str) => City.fromJson(json.decode(str));
String cityToJson(City data) => json.encode(data.toJson());
class City {
  City({
      num? id, 
      String? name, 
      Coord? coord, 
      String? country, 
      num? population, 
      num? timezone, 
      num? sunrise, 
      num? sunset,}){
    _id = id;
    _name = name;
    _coord = coord;
    _country = country;
    _population = population;
    _timezone = timezone;
    _sunrise = sunrise;
    _sunset = sunset;
}

  City.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    _country = json['country'];
    _population = json['population'];
    _timezone = json['timezone'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
  }
  num? _id;
  String? _name;
  Coord? _coord;
  String? _country;
  num? _population;
  num? _timezone;
  num? _sunrise;
  num? _sunset;
City copyWith({  num? id,
  String? name,
  Coord? coord,
  String? country,
  num? population,
  num? timezone,
  num? sunrise,
  num? sunset,
}) => City(  id: id ?? _id,
  name: name ?? _name,
  coord: coord ?? _coord,
  country: country ?? _country,
  population: population ?? _population,
  timezone: timezone ?? _timezone,
  sunrise: sunrise ?? _sunrise,
  sunset: sunset ?? _sunset,
);
  num? get id => _id;
  String? get name => _name;
  Coord? get coord => _coord;
  String? get country => _country;
  num? get population => _population;
  num? get timezone => _timezone;
  num? get sunrise => _sunrise;
  num? get sunset => _sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_coord != null) {
      map['coord'] = _coord?.toJson();
    }
    map['country'] = _country;
    map['population'] = _population;
    map['timezone'] = _timezone;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    return map;
  }

}

/// lat : 44.34
/// lon : 10.99

Coord coordFromJson(String str) => Coord.fromJson(json.decode(str));
String coordToJson(Coord data) => json.encode(data.toJson());
class Coord {
  Coord({
      num? lat, 
      num? lon,}){
    _lat = lat;
    _lon = lon;
}

  Coord.fromJson(dynamic json) {
    _lat = json['lat'];
    _lon = json['lon'];
  }
  num? _lat;
  num? _lon;
Coord copyWith({  num? lat,
  num? lon,
}) => Coord(  lat: lat ?? _lat,
  lon: lon ?? _lon,
);
  num? get lat => _lat;
  num? get lon => _lon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lon'] = _lon;
    return map;
  }

}

/// dt : 1708614000
/// main : {"temp":282.78,"feels_like":280.65,"temp_min":281.65,"temp_max":282.78,"pressure":1011,"sea_level":1011,"grnd_level":923,"humidity":64,"temp_kf":1.13}
/// weather : [{"id":500,"main":"Rain","description":"light rain","icon":"10d"}]
/// clouds : {"all":99}
/// wind : {"speed":4.1,"deg":200,"gust":10.37}
/// visibility : 10000
/// pop : 0.31
/// rain : {"3h":0.12}
/// sys : {"pod":"d"}
/// dt_txt : "2024-02-22 15:00:00"

ForecastEntry listFromJson(String str) => ForecastEntry.fromJson(json.decode(str));
String listToJson(ForecastEntry data) => json.encode(data.toJson());
class ForecastEntry {
  ForecastEntry({
      num? dt, 
      Main? main, 
      List<Weather>? weather, 
      Clouds? clouds, 
      Wind? wind, 
      num? visibility, 
      num? pop, 
      Rain? rain, 
      Sys? sys, 
      String? dtTxt,}){
    _dt = dt;
    _main = main;
    _weather = weather;
    _clouds = clouds;
    _wind = wind;
    _visibility = visibility;
    _pop = pop;
    _rain = rain;
    _sys = sys;
    _dtTxt = dtTxt;
}

  ForecastEntry.fromJson(dynamic json) {
    _dt = json['dt'];
    _main = json['main'] != null ? Main.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    _wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    _visibility = json['visibility'];
    _pop = json['pop'];
    _rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    _sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    _dtTxt = json['dt_txt'];
  }
  num? _dt;
  Main? _main;
  List<Weather>? _weather;
  Clouds? _clouds;
  Wind? _wind;
  num? _visibility;
  num? _pop;
  Rain? _rain;
  Sys? _sys;
  String? _dtTxt;
  ForecastEntry copyWith({  num? dt,
  Main? main,
  List<Weather>? weather,
  Clouds? clouds,
  Wind? wind,
  num? visibility,
  num? pop,
  Rain? rain,
  Sys? sys,
  String? dtTxt,
}) => ForecastEntry(  dt: dt ?? _dt,
  main: main ?? _main,
  weather: weather ?? _weather,
  clouds: clouds ?? _clouds,
  wind: wind ?? _wind,
  visibility: visibility ?? _visibility,
  pop: pop ?? _pop,
  rain: rain ?? _rain,
  sys: sys ?? _sys,
  dtTxt: dtTxt ?? _dtTxt,
);
  num? get dt => _dt;
  Main? get main => _main;
  List<Weather>? get weather => _weather;
  Clouds? get clouds => _clouds;
  Wind? get wind => _wind;
  num? get visibility => _visibility;
  num? get pop => _pop;
  Rain? get rain => _rain;
  Sys? get sys => _sys;
  String? get dtTxt => _dtTxt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    if (_main != null) {
      map['main'] = _main?.toJson();
    }
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    if (_clouds != null) {
      map['clouds'] = _clouds?.toJson();
    }
    if (_wind != null) {
      map['wind'] = _wind?.toJson();
    }
    map['visibility'] = _visibility;
    map['pop'] = _pop;
    if (_rain != null) {
      map['rain'] = _rain?.toJson();
    }
    if (_sys != null) {
      map['sys'] = _sys?.toJson();
    }
    map['dt_txt'] = _dtTxt;
    return map;
  }

}

/// pod : "d"

Sys sysFromJson(String str) => Sys.fromJson(json.decode(str));
String sysToJson(Sys data) => json.encode(data.toJson());
class Sys {
  Sys({
      String? pod,}){
    _pod = pod;
}

  Sys.fromJson(dynamic json) {
    _pod = json['pod'];
  }
  String? _pod;
Sys copyWith({  String? pod,
}) => Sys(  pod: pod ?? _pod,
);
  String? get pod => _pod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pod'] = _pod;
    return map;
  }

}

/// 3h : 0.12

Rain rainFromJson(String str) => Rain.fromJson(json.decode(str));
String rainToJson(Rain data) => json.encode(data.toJson());
class Rain {
  Rain({
      num? h,}){
    _h = h;
}

  Rain.fromJson(dynamic json) {
    _h = json['3h'];
  }
  num? _h;
Rain copyWith({  num? h,
}) => Rain(  h: h ?? _h,
);
  num? get h => _h;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['3h'] = _h;
    return map;
  }

}

/// speed : 4.1
/// deg : 200
/// gust : 10.37

Wind windFromJson(String str) => Wind.fromJson(json.decode(str));
String windToJson(Wind data) => json.encode(data.toJson());
class Wind {
  Wind({
      num? speed, 
      num? deg, 
      num? gust,}){
    _speed = speed;
    _deg = deg;
    _gust = gust;
}

  Wind.fromJson(dynamic json) {
    _speed = json['speed'];
    _deg = json['deg'];
    _gust = json['gust'];
  }
  num? _speed;
  num? _deg;
  num? _gust;
Wind copyWith({  num? speed,
  num? deg,
  num? gust,
}) => Wind(  speed: speed ?? _speed,
  deg: deg ?? _deg,
  gust: gust ?? _gust,
);
  num? get speed => _speed;
  num? get deg => _deg;
  num? get gust => _gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = _speed;
    map['deg'] = _deg;
    map['gust'] = _gust;
    return map;
  }

}

/// all : 99

Clouds cloudsFromJson(String str) => Clouds.fromJson(json.decode(str));
String cloudsToJson(Clouds data) => json.encode(data.toJson());
class Clouds {
  Clouds({
      num? all,}){
    _all = all;
}

  Clouds.fromJson(dynamic json) {
    _all = json['all'];
  }
  num? _all;
Clouds copyWith({  num? all,
}) => Clouds(  all: all ?? _all,
);
  num? get all => _all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = _all;
    return map;
  }

}

/// id : 500
/// main : "Rain"
/// description : "light rain"
/// icon : "10d"

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));
String weatherToJson(Weather data) => json.encode(data.toJson());
class Weather {
  Weather({
      num? id, 
      String? main, 
      String? description, 
      String? icon,}){
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
}

  Weather.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }
  num? _id;
  String? _main;
  String? _description;
  String? _icon;
Weather copyWith({  num? id,
  String? main,
  String? description,
  String? icon,
}) => Weather(  id: id ?? _id,
  main: main ?? _main,
  description: description ?? _description,
  icon: icon ?? _icon,
);
  num? get id => _id;
  String? get main => _main;
  String? get description => _description;
  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }

}

/// temp : 282.78
/// feels_like : 280.65
/// temp_min : 281.65
/// temp_max : 282.78
/// pressure : 1011
/// sea_level : 1011
/// grnd_level : 923
/// humidity : 64
/// temp_kf : 1.13

Main mainFromJson(String str) => Main.fromJson(json.decode(str));
String mainToJson(Main data) => json.encode(data.toJson());
class Main {
  Main({
      num? temp, 
      num? feelsLike, 
      num? tempMin, 
      num? tempMax, 
      num? pressure, 
      num? seaLevel, 
      num? grndLevel, 
      num? humidity, 
      num? tempKf,}){
    _temp = temp;
    _feelsLike = feelsLike;
    _tempMin = tempMin;
    _tempMax = tempMax;
    _pressure = pressure;
    _seaLevel = seaLevel;
    _grndLevel = grndLevel;
    _humidity = humidity;
    _tempKf = tempKf;
}

  Main.fromJson(dynamic json) {
    _temp = json['temp'];
    _feelsLike = json['feels_like'];
    _tempMin = json['temp_min'];
    _tempMax = json['temp_max'];
    _pressure = json['pressure'];
    _seaLevel = json['sea_level'];
    _grndLevel = json['grnd_level'];
    _humidity = json['humidity'];
    _tempKf = json['temp_kf'];
  }
  num? _temp;
  num? _feelsLike;
  num? _tempMin;
  num? _tempMax;
  num? _pressure;
  num? _seaLevel;
  num? _grndLevel;
  num? _humidity;
  num? _tempKf;
Main copyWith({  num? temp,
  num? feelsLike,
  num? tempMin,
  num? tempMax,
  num? pressure,
  num? seaLevel,
  num? grndLevel,
  num? humidity,
  num? tempKf,
}) => Main(  temp: temp ?? _temp,
  feelsLike: feelsLike ?? _feelsLike,
  tempMin: tempMin ?? _tempMin,
  tempMax: tempMax ?? _tempMax,
  pressure: pressure ?? _pressure,
  seaLevel: seaLevel ?? _seaLevel,
  grndLevel: grndLevel ?? _grndLevel,
  humidity: humidity ?? _humidity,
  tempKf: tempKf ?? _tempKf,
);
  num? get temp => _temp;
  num? get feelsLike => _feelsLike;
  num? get tempMin => _tempMin;
  num? get tempMax => _tempMax;
  num? get pressure => _pressure;
  num? get seaLevel => _seaLevel;
  num? get grndLevel => _grndLevel;
  num? get humidity => _humidity;
  num? get tempKf => _tempKf;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = _temp;
    map['feels_like'] = _feelsLike;
    map['temp_min'] = _tempMin;
    map['temp_max'] = _tempMax;
    map['pressure'] = _pressure;
    map['sea_level'] = _seaLevel;
    map['grnd_level'] = _grndLevel;
    map['humidity'] = _humidity;
    map['temp_kf'] = _tempKf;
    return map;
  }

}