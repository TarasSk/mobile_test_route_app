import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/application/di/injection_container.dart' as di;
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';

class RouteSelectorWidget extends StatelessWidget {
  const RouteSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final startController = TextEditingController();
    final endController = TextEditingController();

    return BlocProvider(
      create: (_) => RouteBloc(routeUseCase: di.injector<RouteUseCase>()),
      child: BlocBuilder<RouteBloc, RouteState>(
        builder: (context, state) {
          final bloc = context.read<RouteBloc>();

          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                elevation: 2,
                margin: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Start location field
                      TextField(
                        controller: startController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_on,
                              color: Theme.of(context).colorScheme.primary),
                          hintText: 'Choose starting point',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          bloc.add(RouteEvent.onFromChanged(from:value));
                        },
                      ),

                      const Divider(height: 1),

                      // End location field
                      TextField(
                        controller: endController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.flag,
                              color: Theme.of(context).colorScheme.error),
                          hintText: 'Choose destination',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          bloc.add(RouteEvent.onToChanged(to: value));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Directions button
              FilledButton(
                onPressed:
                    () {
                        bloc.add(const RouteEvent.loadRoute());
                      },
                    
                style: FilledButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: const Text('Get Directions'),
              ),
            ],
          );
        },
      ),
    );
  }
}
