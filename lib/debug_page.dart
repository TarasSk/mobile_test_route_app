import 'package:flutter/material.dart';
import 'package:api_service/api_service.dart' as api_service;

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

  Future<
      (
        api_service.Route,
        List<(api_service.RouteStep, api_service.Weather)>
      )> _get() async {
    final api = api_service.Api();
    final route = await api.getRoute(from: 'New York', to: 'Los Angeles');
    if (route.data != null) {
      List<(api_service.RouteStep, api_service.Weather)> weatherForStep = [];
      for (var step in route.data!.steps) {
        final weather = await api.getWeather(
            lat: step.location.lat, lng: step.location.lng);
        weatherForStep.add((step, weather.data!));
      }
      return (route.data!, weatherForStep);
    } else {
      throw Exception('Route data is null');
    }
  }
}
