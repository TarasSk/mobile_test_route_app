import 'package:api_service/api_service.dart';
import 'package:dio/dio.dart';

class Api {
  static const String baseUrl = 'https://scrmobiletest.azurewebsites.net';

  final Dio _dio;

  Api({
    Dio? dio,
    List<Interceptor>? interceptors,
  }) : _dio = dio ??
            Dio(BaseOptions(
              baseUrl: baseUrl,
              connectTimeout: Duration(seconds: 5),
              receiveTimeout: Duration(seconds: 5),
            )) {
    if (interceptors != null) {
      _dio.interceptors.addAll(interceptors);
    }
  }
  Future<Response<Route>> getRoute({
    required String from,
    required String to,
  }) async {
    assert(RegExp(r'^[a-zA-Z\s]+$').hasMatch(from),
        'City names can only contain letters and spaces (from: "$from")');
    assert(RegExp(r'^[a-zA-Z\s]+$').hasMatch(to),
        'City names can only contain letters and spaces (to: "$to")');

    try {
      final response = await _dio.get(
        '/api/route/${Uri.encodeComponent(from)}/${Uri.encodeComponent(to)}',
      );

      return Response<Route>(
        data: Route.fromJson(response.data),
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        requestOptions: response.requestOptions,
      );
    } on DioException catch (e) {
      throw _handleDioError(e, 'Failed to fetch route');
    } catch (e) {
      throw Exception('Failed to fetch route: ${e.toString()}');
    }
  }


  Future<Response<Weather>> getWeather({
    required double lat,
    required double lng,
  }) async {
    assert(lat >= -90 && lat <= 90, 'Latitude must be between -90 and 90 (got $lat)');
    assert(lng >= -180 && lng <= 180, 'Longitude must be between -180 and 180 (got $lng)');

    try {
      final response = await _dio.get(
        '/api/Weather/${Uri.encodeComponent(lat.toString())}/${Uri.encodeComponent(lng.toString())}',
      );

      return Response<Weather>(
        data: Weather.fromJson(response.data),
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        requestOptions: response.requestOptions,
      );
    } on DioException catch (e) {
      throw _handleDioError(e, 'Failed to fetch weather');
    } catch (e) {
      throw Exception('Failed to fetch weather: ${e.toString()}');
    }
  }

  Exception _handleDioError(DioException e, String message) {
    if (e.type == DioExceptionType.connectionTimeout) {
      return Exception('$message: Connection timeout');
    } else if (e.type == DioExceptionType.receiveTimeout) {
      return Exception('$message: Receive timeout');
    } else if (e.type == DioExceptionType.sendTimeout) {
      return Exception('$message: Send timeout');
    } else if (e.response != null) {
      return Exception(
          '$message: ${e.response?.statusCode} - ${e.response?.statusMessage}');
    } else {
      return Exception('$message: ${e.message}');
    }
  }
}
