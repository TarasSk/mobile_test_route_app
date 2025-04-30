import 'package:flutter/material.dart';
import 'package:mobile_test/src/application/di/injection_container.dart' as di;
import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_step_entity.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';
import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case_params.dart';

// DEBUG PAGE
// This page is used for debugging purposes only.
// It is not intended to be used in production.
// It is a simple page that displays the route and weather data.

class DebugPage extends StatelessWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Hello World!'),
          ),
          Expanded(
              child: FutureBuilder(
                  future: _get(),
                  builder: (_, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (snapshot.hasData) {
                      final route = snapshot.data!.$1;
                      final weatherForStep = snapshot.data!.$2;
                      return ListView.builder(
                        itemCount: route.steps.length,
                        itemBuilder: (context, index) {
                          final step = weatherForStep[index];
                          return ListTile(
                            title: Text(route.distance.toString() +
                                route.duration.toString()),
                            subtitle: Text('${step.$1.direction}'),
                            trailing: Text('${step.$2.temperature}'),
                          );
                        },
                      );
                    } else {
                      return const Center(child: Text('No data'));
                    }
                  })),
        ],
      ),
    );
  }

  Future<(RouteEntity, List<(RouteStepEntity, WeatherEntity)>)> _get() async {
    final routeUsecase = di.injector<RouteUseCase>();
    final weatherUsecase = di.injector<WeatherUseCase>();
    final route = await routeUsecase
        .call(RouteUseCaseParams(from: 'London', to: 'Paris'));

    if (route.steps.isNotEmpty) {
      List<(RouteStepEntity, WeatherEntity)> weatherForStep = [];
      for (var step in route.steps) {
        final weather = await weatherUsecase.call(
          WeatherUseCaseParams(
            lat: step.location.lat,
            lng: step.location.lng,
          ),
        );
        weatherForStep.add((step, weather));
      }
      return (route, weatherForStep);
    } else {
      throw Exception('Route data is null');
    }
  }
}
