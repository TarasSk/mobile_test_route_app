import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/route_screen.dart';
import 'package:mobile_test/src/features/weather/presentation/bloc/weather_bloc.dart';

import 'di/injection_container.dart' as di;

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => di.injector<RouteBloc>(),
          ),
          BlocProvider(
            create: (context) => di.injector<WeatherBloc>(),
          ),
        ],
        child:  const RouteScreen(),
      ) 
    );
  }
}
