class APIEndpoints {

  static const _apiKEY = '';

  static String oneTimeCall({required String lat, required String lon}) => 'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$_apiKEY';
  static String fiveDayForecast({required String lat, required String lon}) => 'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$_apiKEY';
}