import 'package:mobile_test/src/features/route/domain/entities/location_entity.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_step_entity.dart';
import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';

final mockRouteEntity = RouteEntity(
  duration: 30,
  distance: 15,
  steps: [
    mockRouteStepEntity,
    RouteStepEntity(direction: 'East', location: LocationEntity(lat: 1.0, lng: 1.0)),
  ],
);

const mockWeatherEntity = WeatherEntity(
  description: 'Sunny',
  temperature: 25.0,
);

final mockRouteStepEntity = RouteStepEntity(
  direction: 'North',
  location: LocationEntity(lat: 0.0, lng: 0.0),
);