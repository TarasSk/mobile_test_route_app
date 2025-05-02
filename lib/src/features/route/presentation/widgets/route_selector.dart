import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/widgets/route_steps_bottomsheet.dart';

class RouteSelectorWidget extends StatefulWidget {
  const RouteSelectorWidget({super.key});

  @override
  State<RouteSelectorWidget> createState() => _RouteSelectorWidgetState();
}

class _RouteSelectorWidgetState extends State<RouteSelectorWidget> {
  late final TextEditingController fromController;
  late final TextEditingController toController;

  @override
  void initState() {
    super.initState();
    fromController = TextEditingController();
    toController = TextEditingController();
  }

  @override
  void dispose() {
    fromController.dispose();
    toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RouteBloc>();
    return BlocBuilder<RouteBloc, RouteState>(
      builder: (context, state) {
        final inputs = switch (state) {
          Initial(:final from, :final to) => (from, to),
          LoadSuccess(:final from, :final to) => (from, to),
          _ => (fromController.text, toController.text),
        };
        fromController.text = inputs.$1;
        toController.text = inputs.$2;

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      controller: fromController,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.location_on, color: Theme.of(context).colorScheme.primary),
                        hintText: 'Choose starting point',
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        bloc.add(RouteEvent.onFromChanged(from: value));
                      },
                    ),

                    const Divider(height: 1),

                    // End location field
                    TextField(
                      controller: toController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.flag, color: Theme.of(context).colorScheme.error),
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
            const SizedBox(height: 8),
            // Directions button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FilledButton(
                onPressed: () {
                  bloc.add(const RouteEvent.loadRoute());
                  RouteStepsSheet.show(context);
                },
                style: FilledButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                ),
                child: const Text('Get Directions'),
              ),
            ),
          ],
        );
      },
    );
  }
}
