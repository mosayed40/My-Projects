import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[500]!, Colors.blue[100]!],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Updated at: ${parseDate(weatherModel.date).hour}:${parseDate(weatherModel.date).minute}  ',
            style: TextStyle(fontSize: 24, color: Colors.grey[900]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https:${weatherModel.image}',
                width: 100,
                height: 100,
              ),
              // Image.asset('assets/images/clear.png', width: 100, height: 100),
              Text(
                weatherModel.temp.round().toString(),
                style: TextStyle(fontSize: 48),
              ),
              Column(
                children: [
                  Text(
                    'MaxTemp: ${weatherModel.maxTemp.round()}',
                    style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                  ),
                  Text(
                    'MinTemp: ${weatherModel.minTemp.round()}',
                    style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                  ),
                ],
              ),
              const SizedBox(width: 8),
            ],
          ),
          Text(
            weatherModel.weatherStatus,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

DateTime parseDate(String dateString) {
  return DateTime.parse(dateString);
}
