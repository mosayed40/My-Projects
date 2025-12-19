import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
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
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.network(
                    'https:${weatherModel.image}',
                    width: 100,
                    height: 100,
                  ),
                  Text(
                    weatherModel.weatherStatus,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                weatherModel.cityName,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text('${weatherModel.temp.round()}°', style: TextStyle(fontSize: 80)),
          const SizedBox(height: 20),
          Column(
            children: [
              Text(
                'MaxTemp: ${weatherModel.maxTemp.round()}°',
                style: TextStyle(fontSize: 22, color: Colors.grey[900]),
              ),
              const SizedBox(height: 10),
              Text(
                'MinTemp: ${weatherModel.minTemp.round()}°',
                style: TextStyle(fontSize: 22, color: Colors.grey[900]),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Updated at: ${parseDate(weatherModel.date).hour}:${parseDate(weatherModel.date).minute}  ',
            style: TextStyle(fontSize: 24, color: Colors.grey[900]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'Date: ${parseDate(weatherModel.date).day}/${parseDate(weatherModel.date).month}/${parseDate(weatherModel.date).year}  ',
            style: TextStyle(fontSize: 24, color: Colors.grey[900]),
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
