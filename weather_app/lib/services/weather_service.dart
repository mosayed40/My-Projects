import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final baseUrl = 'https://api.weatherapi.com/v1';
  final apiKey = '7916c08a6dba4e6d89a120513251912';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response;
      response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=14',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final errorMassage =
          e.response?.data['error']['message'] ??
          'oops there was an erroer , try later';
      throw Exception('DioException: $errorMassage');
    } catch (e) {
      log('Exception: ${e.toString()}');
      throw Exception('oops there was an erroer , try later');
    }
  }
}
