import 'dart:convert';

import 'package:api_service/api_service.dart';
import 'package:mobile_test/src/core/utils/converter.dart';
import 'package:mobile_test/src/features/route/data/converters/route_step_entity_convertor.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';

class RouteEntityConverter extends Converter<Route, RouteEntity> {
  const RouteEntityConverter({required RouteStepEntityConvertor routeStepEntityConvertor})
      : _routeStepEntityConvertor = routeStepEntityConvertor;

  final RouteStepEntityConvertor _routeStepEntityConvertor;

  @override
  RouteEntity convert(Route input) {
    return RouteEntity(
      duration: input.duration,
      distance: input.distance,
      steps: _routeStepEntityConvertor.convertIterable(input.steps).toList(growable: false),
    );
  }
}
