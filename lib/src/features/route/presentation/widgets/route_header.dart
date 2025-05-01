import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';

class RouteHeader extends StatelessWidget {
  const RouteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouteBloc, RouteState>(
      builder: (context, state) {
        switch (state) {
          case LoadInProgress _:
            return _Loading();
          case LoadSuccess(:final route, :final from, :final to):
            return _Loaded(
              from: from,
              to: to,
              distance: route.distanceInKm,
              duration: route.durationinHoursAndMinutes,
            );

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _Loaded extends StatelessWidget {
  const _Loaded({
    required this.from,
    required this.to,
    required this.distance,
    required this.duration,
  });

  final String from;
  final String to;
  final String distance;
  final String duration;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // From/To section
        Row(
          children: [
            // Origin dot
            Icon(
              Icons.location_on,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                from,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ],
        ),

        // Vertical connector line
        Container(
          width: 1,
          height: 20,
          margin: const EdgeInsets.only(left: 5),
          color: colorScheme.outlineVariant,
        ),
        Row(
          children: [
            Icon(
              Icons.flag,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                to,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // Distance and time chips
        Row(
          children: [
            // Distance chip
            Chip(
              backgroundColor: colorScheme.surface,
              label: Row(
                children: [
                  Icon(
                    Icons.directions_walk,
                    size: 18,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    distance,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            // Time chip
            Chip(
              backgroundColor: colorScheme.surface,
              label: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 18,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    duration,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const Divider(height: 32),

        // Steps title
        Text(
          'Route steps',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),
      ],
    );
  }
}
