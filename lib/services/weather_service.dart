import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:talent_ql/constants/api_endpoints.dart';
import 'package:talent_ql/services/location_service.dart';

class WeatherService {

  Dio dio = Dio();
  LocationService locationService = LocationService();

  Future<Response> getCurrentWeather() async {
    try{
      Position position = await locationService.getCurrentLocation();
      Response response = await dio.get(APIEndpoints.oneTimeCall(lat: '${position.latitude}', lon: '${position.longitude}'));
      print(response);
      return response;
    } catch (e){
      rethrow;
    }
  }

}