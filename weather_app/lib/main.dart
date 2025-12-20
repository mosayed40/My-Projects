import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/theme/theme_color.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetWeatherCubit>(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            MaterialColor weatherColor = getWeatherMaterialColor(
              BlocProvider.of<GetWeatherCubit>(
                context,
              ).weatherModel?.weatherStatus,
            );
            return MaterialApp(
              title: 'weather app',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: weatherColor,
                appBarTheme: AppBarTheme(
                  backgroundColor: weatherColor.shade500,
                ),
              ),
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}
