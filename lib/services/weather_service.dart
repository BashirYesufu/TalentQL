import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:talent_ql/constants/api_endpoints.dart';
import 'package:talent_ql/models/weather.dart';
import 'package:talent_ql/services/location_service.dart';

class WeatherService {

  Dio dio = Dio();
  final LocationService _locationService = LocationService();

  Future<Weather> getCurrentWeather() async {
    try{
      Position position = await _locationService.getCurrentLocation();
      Response response = await dio.get(APIEndpoints.currentWeather(lat: '${position.latitude}', lon: '${position.longitude}'));
      var data = response.data;
      Weather weather = Weather(
          weatherId: data['weather'][0]['id'],
          cityName: data['name'],
          country: data['sys']['country'],
          currentWeather: data['main']['temp'],
          weatherDescription: data['weather'][0]['main']);
      return weather;
    } catch (e){
      rethrow;
    }
  }

}