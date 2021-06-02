import '../services/location.dart';
import '../services/networking.dart';
import '../model/weather_response.dart';
import 'networking.dart';
import 'networking.dart';

const BASE_URL = "https://api.openweathermap.org/data/2.5/weather";
const apiKey = "0bca2582edf4b0b6cc6291620747edcf";


class WeatherModel {

  Future<dynamic> getCityWeather(String cityName) async{
    var url = "$BASE_URL?q=$cityName&appid=$apiKey&units=metric";
    NetworkHelper networkHelper = NetworkHelper(url: url);
    return await networkHelper.getData();
  }

  Future<dynamic> getLocationWeather() async{
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(url : '$BASE_URL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }


  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
