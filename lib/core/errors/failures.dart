import 'package:dio/dio.dart';

abstract class Failures {
  final String messageError;

  Failures({required this.messageError});
}

class ServerFailure extends Failures {
  ServerFailure({required super.messageError});
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(messageError: "Connection Timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure(messageError: "SendTimeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(messageError: "receiveTimeout");
      case DioExceptionType.badCertificate:
        return ServerFailure(messageError: "badCertificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode,
          dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServerFailure(messageError: "cancel");
      case DioExceptionType.connectionError:
        return ServerFailure(messageError: "connectionError");
      case DioExceptionType.unknown:
        return ServerFailure(messageError: "unknown");
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 401 || statusCode == 402 || statusCode == 403) {
      return ServerFailure(messageError: response['error']['message']);
    } else if (statusCode == 400) {
      return ServerFailure(
        messageError: "Your Request Not Found , Please try again Later",
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        messageError: "Internal Server Error , please try again Later",
      );
    } else {
      return ServerFailure(
        messageError: "Opps there was an error , please try again later",
      );
    }
  }
}
