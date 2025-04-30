import 'dart:async';

import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

void init()  {
  _registerApi();
  _registerRepositories();
  _registerConvertorers();
  _registerUseCases();
  _registerBlocs();
}

void _registerApi() {
  // Register your API classes here
  // Example: injector.registerLazySingleton<YourApi>(() => YourApiImpl());
}
void _registerRepositories() {
  // Register your repositories here
  // Example: injector.registerLazySingleton<YourRepository>(() => YourRepositoryImpl());
} 
void _registerConvertorers() {
  // Register your converters here
  // Example: injector.registerLazySingleton<YourConverter>(() => YourConverterImpl());
}
void _registerUseCases() {
  // Register your use cases here
  // Example: injector.registerLazySingleton<YourUseCase>(() => YourUseCaseImpl());
}

void _registerBlocs() {
  // Register your BLoCs here
  // Example: injector.registerFactory<YourBloc>(() => YourBloc());
}
