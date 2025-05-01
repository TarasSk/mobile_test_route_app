import 'package:mobile_test/src/core/use_case.dart';
import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';
import 'package:mobile_test/src/features/weather/domain/repositories/weather_repository.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case_params.dart';

class WeatherUseCase extends UseCase<WeatherEntity, WeatherUseCaseParams> {
  WeatherUseCase({
    required WeatherRepository repository,
  }) : _repository = repository;

  final WeatherRepository _repository;

  @override
  Future<WeatherEntity> call(WeatherUseCaseParams params) {
    return _repository.getWeather(lat: params.lat, lng: params.lng);
  }
}
