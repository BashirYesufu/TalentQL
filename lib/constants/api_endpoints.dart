class APIEndpoints {

  static const apiKEY = '';

  static String oneTimeCall({required String lat, required String lon}) => 'https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&appid=$apiKEY';
  static String fiveDayForecast({required String lat, required String lon}) => 'api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$apiKEY';
}