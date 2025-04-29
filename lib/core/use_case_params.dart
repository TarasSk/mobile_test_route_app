import 'package:equatable/equatable.dart';

/// The base class for parameters used in use cases.
///
/// All parameter classes must extend [BaseParams] to ensure they are equatable.
abstract class BaseParams extends Equatable {}

/// A singleton class representing the absence of parameters.
///
/// This class is used when a use case does not require any parameters.
class NoParams extends BaseParams {
  /// Private constructor for the singleton instance.
  NoParams._privateConstructor();

  /// The single instance of [NoParams].
  static final NoParams _instance = NoParams._privateConstructor();

  /// Factory constructor to return the singleton instance.
  factory NoParams() => _instance;

  /// Returns an empty list as there are no properties to compare.
  @override
  List<Object?> get props => [];
}
