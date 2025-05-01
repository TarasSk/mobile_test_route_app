import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/models/location_model.dart';
import 'package:mobile_test/src/features/weather/presentation/bloc/weather_bloc.dart';

class WeatherSection extends StatelessWidget {
  const WeatherSection({
    super.key,
    required this.location,
  });

  final LocationModel location;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    context.read<WeatherBloc>().add(
          WeatherEvent.fetchWeatherByLocation(location: location),
        );

    return SizedBox(
      height: 40,
      width: 100,
      child: BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
        switch (state) {
          case Initial():
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Loaded(:final weather):
            final weatherData = weather[location];
            if (weatherData == null) {
              return const Center(
                child: Text('No weather data available'),
              );
            }
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.sunny,
                  size: 20,
                  color: colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  weatherData.description,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '+${weatherData.temperature}',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          case Error():
            return const Center(
              child: Text('No weather data available'),
            );
        }
      }),
    );
  }
}
