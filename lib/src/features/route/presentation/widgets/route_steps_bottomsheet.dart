import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/widgets/route_header.dart';
import 'package:mobile_test/src/features/route/presentation/widgets/route_steps.dart';

class RouteStepsSheet extends StatefulWidget {
  const RouteStepsSheet({super.key});

  static Future<void> show(BuildContext ctx) {
    return showModalBottomSheet(
      context: ctx,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      isDismissible: false,
      enableDrag: false,
      builder: (context) => BlocProvider.value(
        value: BlocProvider.of<RouteBloc>(ctx),
        child: const RouteStepsSheet(),
      ),
    );
  }

  @override
  State<RouteStepsSheet> createState() => _RouteStepsSheetState();
}

class _RouteStepsSheetState extends State<RouteStepsSheet> {
  @override
  Widget build(BuildContext context) {
    final isLoading = context.select<RouteBloc, bool>(
      (bloc) => bloc.state is LoadInProgress,
    );
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.4,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const RouteHeader(),
                    ),

                    RouteSteps(controller: scrollController)
                  ],
                ),
        );
      },
    );
  }
}
