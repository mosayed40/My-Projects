import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a City',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            controller: searchController,
            onSubmitted: (value) async {
              weatherModel = await WeatherService(
                Dio(),
              ).getCurrentWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              label: Text('Search'),
              hintText: 'Enter city name',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 32.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;
