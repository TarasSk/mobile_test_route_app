import 'package:latlong2/latlong.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_step_model.dart';

extension RouteStepExtensions on List<RouteStepModel> {
  /// Maps a list of RouteStepModel to a list of LatLng for polyline rendering.
  List<LatLng> toPolylineCoordinates() {
    return map((step) => LatLng(step.location.lat, step.location.lng)).toList();
  }
}
