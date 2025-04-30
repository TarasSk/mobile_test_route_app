import 'package:api_service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/web.dart';
import 'package:mobile_test/src/application/bloc/global_bloc_observer.dart';
import 'package:mobile_test/src/application/logger/logger.dart';
import 'package:mobile_test/src/core/config/base_url_provider.dart';
import 'package:mobile_test/src/core/interceptors/http_logger_interceptor.dart';
import 'package:mobile_test/src/features/route/data/converters/location_entity_convertor.dart';
import 'package:mobile_test/src/features/route/data/converters/route_entity_converter.dart';
import 'package:mobile_test/src/features/route/data/converters/route_step_entity_convertor.dart';
import 'package:mobile_test/src/features/route/data/repositories/route_repository_impl.dart';
import 'package:mobile_test/src/features/route/domain/repositories/route_repository.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/weather/data/converters/weather_entity_converter.dart';
import 'package:mobile_test/src/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:mobile_test/src/features/weather/domain/repositories/weather_repository.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case.dart';

final injector = GetIt.instance;

void init() {
  _registerCoreDependency();
  _registerApi();
  _registerConvertorers();
  _registerRepositories();
  _registerUseCases();
  _registerBlocs();
}

void _registerCoreDependency() {
  injector.registerLazySingleton<Logger>(() => logger);

  injector.registerLazySingleton<BaseUrlProvider>(BaseUrlProvider.new);

  injector.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: injector<BaseUrlProvider>().baseUrl,
        connectTimeout:
            kDebugMode ? Duration(seconds: 10) : Duration(seconds: 3),
        receiveTimeout:
            kDebugMode ? Duration(seconds: 10) : Duration(seconds: 3),
      ),
    )..interceptors.add(HttpLoggerInterceptor(logger: logger)),
  );

  injector.registerLazySingleton<BlocObserver>(
    () => GlobalBlocObserver(logger: logger),
  );
}

void _registerApi() {
  injector.registerLazySingleton(
    () => Api(
      dio: injector(),
    ),
  );
}

void _registerConvertorers() {
  injector.registerLazySingleton<LocationEntityConvertor>(
      LocationEntityConvertor.new);

  injector.registerLazySingleton<RouteStepEntityConvertor>(
    () => RouteStepEntityConvertor(locationEntityConvertor: injector()),
  );

  injector.registerLazySingleton<RouteEntityConverter>(
    () => RouteEntityConverter(routeStepEntityConvertor: injector()),
  );

  injector.registerLazySingleton<WeatherEntityConverter>(
    WeatherEntityConverter.new,
  );
}

void _registerRepositories() {
  injector.registerFactory<RouteRepository>(
    () => RouteRepositoryImpl(
      api: injector(),
      converter: injector(),
    ),
  );

  injector.registerFactory<WeatherRepository>(
    () => WeatherRepositoryImpl(
      api: injector(),
      converter: injector(),
    ),
  );
}

void _registerUseCases() {
  injector.registerFactory<RouteUseCase>(
    () => RouteUseCase(
      repository: injector(),
    ),
  );

  injector.registerFactory(
    () => WeatherUseCase(
      repository: injector(),
    ),
  );
}

void _registerBlocs() {
  // Register your BLoCs here
  // Example: injector.registerFactory<YourBloc>(() => YourBloc());
}
