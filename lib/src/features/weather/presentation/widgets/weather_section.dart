import 'package:flutter/material.dart';
import 'package:mobile_test/src/features/weather/presentation/models/weather_model.dart';
import 'package:mobile_test/src/features/weather/presentation/models/weather_model_extensions.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({
    super.key,
    required this.model,
  });

  final WeatherModel? model;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final weatherModel = model;

    return weatherModel != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              weatherModel.weatherIcon,
              const SizedBox(width: 4),
              Text(
                weatherModel.description,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                weatherModel.temperatureWithSign,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        : const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(),
          );
  }
}
