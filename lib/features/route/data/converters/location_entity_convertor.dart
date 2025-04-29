import 'dart:convert';

import 'package:api_service/api_service.dart';
import 'package:mobile_test/features/route/domain/entities/location_entity.dart';

class LocationEntityConvertor extends Converter<Location, LocationEntity> {
  const LocationEntityConvertor();

  @override
  LocationEntity convert(Location input) {
    return LocationEntity(
      lat: input.lat,
      lng: input.lng,
    );
  }

}