import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/weather/presentation/widgets/weather_section.dart'; // Ensure this is the correct path

class RouteSteps extends StatelessWidget {
  const RouteSteps({
    super.key,
    required ScrollController controller,
  }) : _controller = controller;

  final ScrollController _controller;
 

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Expanded(
      child: BlocBuilder<RouteBloc, RouteState>(
        builder: (context, state) {
          switch (state) {
            case LoadSuccess(:final route):
              return ListView.builder(
                controller: _controller,
                padding: const EdgeInsets.all(16),
                itemCount:
                    route.steps.length,
                itemBuilder: (context, index) {
    
                  final step = route.steps[index];
                  final weather = state.weather[step.location.stringKey];
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
                        trailing: WeatherSection(model: weather),
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
    );
  }
}