class APIEndpoints {

  static const _apiKEY = '51a7232a23646180fed466741177d565';

  static String currentWeather({required String lat, required String lon}) => 'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$_apiKEY';
  static String fiveDayForecast({required String lat, required String lon}) => 'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$_apiKEY&units=metric';
}