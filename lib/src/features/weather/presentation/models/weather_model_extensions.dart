import 'package:flutter/material.dart';
import 'weather_model.dart';

extension WeatherModelIconExtension on WeatherModel {
  Icon get weatherIcon {
    switch (description.toLowerCase()) {
      case 'clear sky':
        return const Icon(
          Icons.wb_sunny,
          color: Colors.orange,
          size: 20,
        );
      case 'few clouds':
        return const Icon(
          Icons.cloud,
          color: Colors.grey,
          size: 20,
        );
      case 'rain':
        return const Icon(
          Icons.umbrella,
          color: Colors.blue,
          size: 20,
        );
      case 'snow':
        return const Icon(
          Icons.ac_unit,
          color: Colors.lightBlue,
          size: 20,
        );
      case 'thunderstorm':
        return const Icon(
          Icons.flash_on,
          color: Colors.yellow,
          size: 20,
        );
      case 'mist':
        return const Icon(
          Icons.foggy,
          color: Colors.grey,
          size: 20,
        );
      case 'haze':
        return const Icon(
          Icons.wb_cloudy,
          color: Colors.grey,
          size: 20,
        );
      case 'fog':
        return const Icon(
          Icons.wb_sunny,
          color: Colors.grey,
          size: 20,
        );
      case 'overcast clouds':
        return const Icon(
          Icons.cloud,
          color: Colors.grey,
          size: 20,
        );
      case 'broken clouds':
        return const Icon(
          Icons.cloud,
          color: Colors.grey,
          size: 20,
        );
      case 'scattered clouds':
        return const Icon(
          Icons.cloud,
          color: Colors.grey,
          size: 20,
        );
      case 'light rain':
        return const Icon(
          Icons.umbrella,
          color: Colors.blue,
          size: 20,
        );
      case 'heavy rain':
        return const Icon(
          Icons.umbrella,
          color: Colors.blue,
          size: 20,
        );
      case 'light snow':
        return const Icon(
          Icons.ac_unit,
          color: Colors.lightBlue,
          size: 20,
        );
      case 'heavy snow':
        return const Icon(
          Icons.ac_unit,
          color: Colors.lightBlue,
          size: 20,
        );
      case 'light thunderstorm':
        return const Icon(
          Icons.flash_on,
          color: Colors.yellow,
          size: 20,
        );
      case 'heavy thunderstorm':
        return const Icon(
          Icons.flash_on,
          color: Colors.yellow,
          size: 20,
        );
      default:
        return const Icon(Icons.cloud_queue, color: Colors.grey);
    }
  }
}
