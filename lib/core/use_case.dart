import 'package:mobile_test/core/use_case_params.dart';

/// The base class for use cases which return type [Future]
///
/// [Type] is the generic for the return type of the execution of the use case
///
/// [Params] is the generic for the params of the call method of the use case
/// and must inherit from [BaseParams]
abstract class UseCase<Type, Params extends BaseParams> {
  /// Execute the use case
  Future<Type> call(Params params);
}
