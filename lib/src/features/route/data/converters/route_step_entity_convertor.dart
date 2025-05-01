import 'dart:convert';

import 'package:api_service/api_service.dart';
import 'package:mobile_test/src/features/route/data/converters/location_entity_convertor.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_step_entity.dart';

class RouteStepEntityConvertor extends Converter<RouteStep, RouteStepEntity> {
  const RouteStepEntityConvertor({required LocationEntityConvertor locationEntityConvertor})
      : _locationEntityConvertor = locationEntityConvertor;

  final LocationEntityConvertor _locationEntityConvertor;

  @override
  RouteStepEntity convert(RouteStep input) {
    return RouteStepEntity(
      direction: input.direction ?? '',
      location: _locationEntityConvertor.convert(input.location),
    );
  }
}
