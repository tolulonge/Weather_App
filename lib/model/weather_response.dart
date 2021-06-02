/// coord : {"lon":-122.4064,"lat":37.7858}
/// weather : [{"id":701,"main":"Mist","description":"mist","icon":"50d"}]
/// base : "stations"
/// main : {"temp":9.48,"feels_like":6.36,"temp_min":7.78,"temp_max":11,"pressure":1013,"humidity":87}
/// visibility : 9656
/// wind : {"speed":6.69,"deg":260}
/// clouds : {"all":90}
/// dt : 1621086584
/// sys : {"type":1,"id":5154,"country":"US","sunrise":1621083572,"sunset":1621134757}
/// timezone : -25200
/// id : 5391959
/// name : "San Francisco"
/// cod : 200

class WeatherResponse {
  Coord _coord;
  List<Weather> _weather;
  String _base;
  Main _main;
  int _visibility;
  Wind _wind;
  Clouds _clouds;
  int _dt;
  Sys _sys;
  int _timezone;
  int _id;
  String _name;
  int _cod;

  Coord get coord => _coord;
  List<Weather> get weather => _weather;
  String get base => _base;
  Main get main => _main;
  int get visibility => _visibility;
  Wind get wind => _wind;
  Clouds get clouds => _clouds;
  int get dt => _dt;
  Sys get sys => _sys;
  int get timezone => _timezone;
  int get id => _id;
  String get name => _name;
  int get cod => _cod;

  WeatherResponse({
      Coord coord, 
      List<Weather> weather, 
      String base, 
      Main main, 
      int visibility, 
      Wind wind, 
      Clouds clouds, 
      int dt, 
      Sys sys, 
      int timezone, 
      int id, 
      String name, 
      int cod}){
    _coord = coord;
    _weather = weather;
    _base = base;
    _main = main;
    _visibility = visibility;
    _wind = wind;
    _clouds = clouds;
    _dt = dt;
    _sys = sys;
    _timezone = timezone;
    _id = id;
    _name = name;
    _cod = cod;
}

  WeatherResponse.fromJson(dynamic json) {
    _coord = json["coord"] != null ? Coord.fromJson(json["coord"]) : null;
    if (json["weather"] != null) {
      _weather = [];
      json["weather"].forEach((v) {
        _weather.add(Weather.fromJson(v));
      });
    }
    _base = json["base"];
    _main = json["main"] != null ? Main.fromJson(json["main"]) : null;
    _visibility = json["visibility"];
    _wind = json["wind"] != null ? Wind.fromJson(json["wind"]) : null;
    _clouds = json["clouds"] != null ? Clouds.fromJson(json["clouds"]) : null;
    _dt = json["dt"];
    _sys = json["sys"] != null ? Sys.fromJson(json["sys"]) : null;
    _timezone = json["timezone"];
    _id = json["id"];
    _name = json["name"];
    _cod = json["cod"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_coord != null) {
      map["coord"] = _coord.toJson();
    }
    if (_weather != null) {
      map["weather"] = _weather.map((v) => v.toJson()).toList();
    }
    map["base"] = _base;
    if (_main != null) {
      map["main"] = _main.toJson();
    }
    map["visibility"] = _visibility;
    if (_wind != null) {
      map["wind"] = _wind.toJson();
    }
    if (_clouds != null) {
      map["clouds"] = _clouds.toJson();
    }
    map["dt"] = _dt;
    if (_sys != null) {
      map["sys"] = _sys.toJson();
    }
    map["timezone"] = _timezone;
    map["id"] = _id;
    map["name"] = _name;
    map["cod"] = _cod;
    return map;
  }

}

/// type : 1
/// id : 5154
/// country : "US"
/// sunrise : 1621083572
/// sunset : 1621134757

class Sys {
  int _type;
  int _id;
  String _country;
  int _sunrise;
  int _sunset;

  int get type => _type;
  int get id => _id;
  String get country => _country;
  int get sunrise => _sunrise;
  int get sunset => _sunset;

  Sys({
      int type, 
      int id, 
      String country, 
      int sunrise, 
      int sunset}){
    _type = type;
    _id = id;
    _country = country;
    _sunrise = sunrise;
    _sunset = sunset;
}

  Sys.fromJson(dynamic json) {
    _type = json["type"];
    _id = json["id"];
    _country = json["country"];
    _sunrise = json["sunrise"];
    _sunset = json["sunset"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["type"] = _type;
    map["id"] = _id;
    map["country"] = _country;
    map["sunrise"] = _sunrise;
    map["sunset"] = _sunset;
    return map;
  }

}

/// all : 90

class Clouds {
  int _all;

  int get all => _all;

  Clouds({
      int all}){
    _all = all;
}

  Clouds.fromJson(dynamic json) {
    _all = json["all"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = _all;
    return map;
  }

}

/// speed : 6.69
/// deg : 260

class Wind {
  double _speed;
  int _deg;

  double get speed => _speed;
  int get deg => _deg;

  Wind({
      double speed, 
      int deg}){
    _speed = speed;
    _deg = deg;
}

  Wind.fromJson(dynamic json) {
    _speed = json["speed"];
    _deg = json["deg"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["speed"] = _speed;
    map["deg"] = _deg;
    return map;
  }

}

/// temp : 9.48
/// feels_like : 6.36
/// temp_min : 7.78
/// temp_max : 11
/// pressure : 1013
/// humidity : 87

class Main {
  double _temp;
  double _feelsLike;
  double _tempMin;
  int _tempMax;
  int _pressure;
  int _humidity;

  double get temp => _temp;
  double get feelsLike => _feelsLike;
  double get tempMin => _tempMin;
  int get tempMax => _tempMax;
  int get pressure => _pressure;
  int get humidity => _humidity;

  Main({
      double temp, 
      double feelsLike, 
      double tempMin, 
      int tempMax, 
      int pressure, 
      int humidity}){
    _temp = temp;
    _feelsLike = feelsLike;
    _tempMin = tempMin;
    _tempMax = tempMax;
    _pressure = pressure;
    _humidity = humidity;
}

  Main.fromJson(dynamic json) {
    _temp = json["temp"];
    _feelsLike = json["feels_like"];
    _tempMin = json["temp_min"];
    _tempMax = json["temp_max"];
    _pressure = json["pressure"];
    _humidity = json["humidity"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["temp"] = _temp;
    map["feels_like"] = _feelsLike;
    map["temp_min"] = _tempMin;
    map["temp_max"] = _tempMax;
    map["pressure"] = _pressure;
    map["humidity"] = _humidity;
    return map;
  }

}

/// id : 701
/// main : "Mist"
/// description : "mist"
/// icon : "50d"

class Weather {
  int _id;
  String _main;
  String _description;
  String _icon;

  int get id => _id;
  String get main => _main;
  String get description => _description;
  String get icon => _icon;

  Weather({
      int id, 
      String main, 
      String description, 
      String icon}){
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
}

  Weather.fromJson(dynamic json) {
    _id = json["id"];
    _main = json["main"];
    _description = json["description"];
    _icon = json["icon"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["main"] = _main;
    map["description"] = _description;
    map["icon"] = _icon;
    return map;
  }

}

/// lon : -122.4064
/// lat : 37.7858

class Coord {
  double _lon;
  double _lat;

  double get lon => _lon;
  double get lat => _lat;

  Coord({
      double lon, 
      double lat}){
    _lon = lon;
    _lat = lat;
}

  Coord.fromJson(dynamic json) {
    _lon = json["lon"];
    _lat = json["lat"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["lon"] = _lon;
    map["lat"] = _lat;
    return map;
  }

}