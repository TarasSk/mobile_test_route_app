import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/extensions/route_step_extensions.dart';
import 'package:mobile_test/src/features/route/presentation/widgets/route_selector.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final polylineCoordinates = context.select<RouteBloc, List<LatLng>>((bloc) {
      final state = bloc.state;
      switch (state) {
        case LoadSuccess(:final route):
          return route.steps.toPolylineCoordinates();
        default:
          return [];
      }
    });

    return Scaffold(
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(51.5107233, 0.0001902), // Default center
            initialZoom: 4,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: 'com.example.app',
            ),
            if (polylineCoordinates.isNotEmpty) ...[
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: polylineCoordinates,
                    strokeWidth: 4.0,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ],
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16), // Adjusted padding to align to the top
              child: RouteSelectorWidget(),
            ),
          ),
        ),
      ]),
    );
  }
}
