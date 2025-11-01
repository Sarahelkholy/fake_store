import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleDioError(error);
    } else {
      apiErrorModel = ApiErrorModel(
        code: -7,
        message: "Unexpected error occurred, please try again.",
      );
    }
  }

  ApiErrorModel _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(
          code: -1,
          message: "Connection timeout, please check your internet.",
        );

      case DioExceptionType.sendTimeout:
        return ApiErrorModel(
          code: -2,
          message: "Send timeout, please try again.",
        );

      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(
          code: -3,
          message: "Receive timeout, please try again.",
        );

      case DioExceptionType.cancel:
        return ApiErrorModel(code: -4, message: "Request was cancelled.");

      case DioExceptionType.badResponse:
        final response = error.response;
        if (response != null && response.data != null) {
          try {
            return ApiErrorModel.fromJson(response.data);
          } catch (_) {
            return ApiErrorModel(
              code: response.statusCode ?? 0,
              message: response.statusMessage ?? "Unknown server error",
            );
          }
        }
        return ApiErrorModel(
          code: response?.statusCode ?? 0,
          message: "Bad response from server.",
        );

      case DioExceptionType.connectionError:
        return ApiErrorModel(code: -6, message: "No Internet connection.");

      default:
        return ApiErrorModel(
          code: -7,
          message: "Unexpected error occurred, please try again.",
        );
    }
  }
}
