import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/models/location_model.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_model.dart';
import 'package:mobile_test/src/features/route/presentation/widgets/route_header.dart';
import 'package:mobile_test/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:mobile_test/src/features/weather/presentation/widgets/weather_section.dart';

class RouteStepsSheet extends StatelessWidget {
  const RouteStepsSheet({super.key});

  static Future<void> show(BuildContext ctx) {
    return showModalBottomSheet(
      context: ctx,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: BlocProvider.of<RouteBloc>(ctx),
          ),
          BlocProvider.value(
            value: BlocProvider.of<WeatherBloc>(ctx),
          ),
        ],
        child: const RouteStepsSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.3,
      maxChildSize: 0.9,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onVerticalDragUpdate: (details) {
                scrollController.position.moveTo(
                  scrollController.position.pixels - details.delta.dy,
                );
              },
              child: Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
            // Route information header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const RouteHeader(),
            ),

            Expanded(
              child: BlocBuilder<RouteBloc, RouteState>(
                builder: (context, state) {
                  switch (state) {
                    case LoadSuccess(:final route):
                      return ListView.builder(
                        controller: scrollController,
                        padding: const EdgeInsets.all(16),
                        itemCount: route.steps.length,
                        itemBuilder: (context, index) {
                          final step = route.steps[index];
                          return Card(
                            margin: const EdgeInsets.only(bottom: 8),
                            color: colorScheme.surface,
                            child: ListTile(
                              leading: Icon(
                                Icons.directions_walk,
                                color: colorScheme.primary,
                              ),
                              title: Text(
                                step.direction,
                                style: theme.textTheme.bodyLarge,
                              ),
                             trailing: WeatherSection(location: step.location),
                            ),
                          );
                        },
                      );
                    default:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDirectionIcon(String direction, ColorScheme colorScheme) {
    IconData icon;
    Color color;

    switch (direction) {
      case '->':
        icon = Icons.turn_right;
        color = Colors.green;
        break;
      case '<-':
        icon = Icons.turn_left;
        color = Colors.blue;
        break;
      default:
        icon = Icons.straight;
        color = colorScheme.primary;
    }

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.2),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 20,
          color: color,
        ),
      ),
    );
  }

  IconData _getWeatherIcon(String weather) {
    switch (weather.toLowerCase()) {
      case 'sunny':
        return Icons.wb_sunny;
      case 'partly cloudy':
        return Icons.wb_cloudy;
      case 'rainy':
        return Icons.beach_access;
      case 'clear':
        return Icons.nightlight_round;
      default:
        return Icons.cloud;
    }
  }
}
