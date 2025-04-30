import 'package:mobile_test/src/core/use_case_params.dart';

class WeatherUseCaseParams extends BaseParams {
  WeatherUseCaseParams({
    required this.lat,
    required this.lng,
  });

  final double lat;
  final double lng;

  @override
  List<Object?> get props => [
        lat,
        lng,
      ];
}
