import 'package:mobile_test/core/use_case_params.dart';

class RouteUseCaseParams extends BaseParams {
  RouteUseCaseParams({
    required this.from,
    required this.to,
  });

  final String from;
  final String to;

  @override
  List<Object?> get props => [
        from,
        to,
      ];
}
