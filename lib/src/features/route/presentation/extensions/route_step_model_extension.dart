import 'package:flutter/material.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_step_model.dart';

extension RouteStepModelExtension on RouteStepModel {
  Icon get directionIcon {
    switch (direction.toLowerCase()) {
      case 'turn-right':
        return const Icon(Icons.turn_slight_right, color: Colors.blue);
      case 'turn-left':
        return const Icon(Icons.turn_slight_left, color: Colors.blue);
      case 'turn-slight-right':
        return const Icon(Icons.turn_right, color: Colors.lightBlue);
      case 'turn-slight-left':
        return const Icon(Icons.turn_left, color: Colors.lightBlue);
      case 'ramp-left':
        return const Icon(Icons.ramp_left, color: Colors.orange);
      case 'ramp-right':
        return const Icon(Icons.ramp_right, color: Colors.orange);
      case 'ramp':
        return const Icon(Icons.alt_route, color: Colors.orange);
      case 'roundabout-left':
        return const Icon(Icons.roundabout_left, color: Colors.purple);
      case 'roundabout-right':
        return const Icon(Icons.roundabout_right, color: Colors.purple);
      case 'merge':
        return const Icon(Icons.merge, color: Colors.green);
      case 'ferry-train':
        return const Icon(Icons.directions_boat, color: Colors.teal);
      case 'keep-right':
        return const Icon(Icons.turn_right, color: Colors.blue);
      case 'keep-left':
        return const Icon(Icons.turn_left, color: Colors.blue);
      default:
        return const Icon(Icons.straight, color: Colors.grey);
    }
  }
}
