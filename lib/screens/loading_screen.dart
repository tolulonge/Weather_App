
import 'package:clima/model/weather_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/weather.dart';
import '../services/weather.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async{

    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();


    Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(locationData: weatherData,)));
  }

  @override
  void initState() {
    super.initState();
   getLocationData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
