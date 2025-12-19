class WeatherModel {
  final String cityName;
  final DateTime date;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherStatus;
  final String image;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherStatus,
    required this.image,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['location']['localtime']),
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherStatus:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    );
  }
}
