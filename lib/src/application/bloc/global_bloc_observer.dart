import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class GlobalBlocObserver extends BlocObserver {
  GlobalBlocObserver({required Logger logger}) : _logger = logger;
  final Logger _logger;

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logger.e('Bloc error : ${bloc.runtimeType} $error $stackTrace',
        error: error, stackTrace: stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.d('Bloc change : ${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _logger.d('Bloc transition : ${bloc.runtimeType} $transition');
  }
}
