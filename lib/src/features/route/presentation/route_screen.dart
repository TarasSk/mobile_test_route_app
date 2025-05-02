import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/extensions/route_step_extensions.dart';
import 'package:mobile_test/src/features/route/presentation/widgets/route_selector.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  late final MapController _mapController;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _mapController = MapController();
    });
    super.initState();
  }

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

    return BlocListener<RouteBloc, RouteState>(
      listener: (context, state) {
        // switch (state) {
        //   case LoadSuccess(:final route, :final weather):
        //     if (route.steps.isNotEmpty &&
        //         weather.entries.isNotEmpty &&
        //         route.steps.length == weather.entries.length) {
        //       WidgetsBinding.instance.addPostFrameCallback((_) {
        //         _mapController.move(
        //           LatLng(route.steps.first.location.lat,
        //               route.steps.first.location.lng),
        //           13,
        //         );
        //       });
        //     }

        //   default:
        //     break;
        // }
      },
      child: Scaffold(
        body: Stack(children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(51.5107233, 0.0001902), // Default center
              initialZoom: 5,
              onMapReady: () {
                if (polylineCoordinates.isNotEmpty) {
                  _mapController.move(polylineCoordinates.first, 13.0);
                }
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: RouteSelectorWidget(),
            ),
          ),
        ]),
      ),
    );
  }
}
