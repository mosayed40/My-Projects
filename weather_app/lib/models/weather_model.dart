class WeatherModel {
  final String cityName;
  final String date;
  final String temp;
  final String maxTemp;
  final String minTemp;
  final String weatherStatus;
  final String? image;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherStatus,
    this.image,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'].toString(),
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c']
          .toString(),
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c']
          .toString(),
      weatherStatus:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
