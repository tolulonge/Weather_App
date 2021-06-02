import 'package:clima/model/weather_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  final String url;

  NetworkHelper({this.url});

  Future getData() async{
    http.Response response =await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      String data = response.body;

      var decodedData = json.decode(data);
      return decodedData;
    }else
    print(response.statusCode);
  }


}