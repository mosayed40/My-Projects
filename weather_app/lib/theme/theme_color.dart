import 'package:flutter/material.dart';

MaterialColor getWeatherMaterialColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    // ☀️ Sunny / Clear
    case "Sunny":
      return Colors.orange;

    case "Clear":
      return Colors.lightBlue;

    // ⛅ Cloudy
    case "Partly cloudy":
      return Colors.blueGrey;

    case "Cloudy":
      return Colors.grey;

    case "Overcast":
      return Colors.blueGrey;

    // 🌫 Fog / Mist
    case "Mist":
    case "Fog":
    case "Freezing fog":
      return Colors.blueGrey;

    // 🌧 Rain
    case "Patchy rain possible":
    case "Patchy light rain":
    case "Light rain":
    case "Light rain shower":
      return Colors.lightBlue;

    case "Moderate rain":
    case "Moderate rain at times":
      return Colors.blue;

    case "Heavy rain":
    case "Heavy rain at times":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
      return Colors.indigo;

    // ❄️ Snow
    case "Patchy snow possible":
    case "Patchy light snow":
    case "Light snow":
      return Colors.cyan;

    case "Moderate snow":
    case "Patchy moderate snow":
    case "Heavy snow":
    case "Patchy heavy snow":
      return Colors.blue;

    // 🌨 Ice
    case "Patchy sleet possible":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Ice pellets":
      return Colors.lightBlue;

    // ⛈ Thunder
    case "Thundery outbreaks possible":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
      return Colors.deepPurple;

    // 🔁 Default
    default:
      return Colors.blueGrey;
  }
}
