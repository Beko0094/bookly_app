import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioErroe) {
    switch (dioErroe.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate , Please try later');
      case DioExceptionType.badResponse:
        // if (dioErroe.response != null) {
//   return ServerFailure.fromResponce(...);
// } else {
//   return ServerFailure(errorMessage: 'Bad response with no data');
// }
        return ServerFailure.fromResponce(
            dioErroe.response!.statusCode!, dioErroe.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet connection');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected error , Please try later');
    }
  }

  factory ServerFailure.fromResponce(int statusCode, dynamic responce) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(responce['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , Please try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , Please try later');
    } else {
      return ServerFailure('Opps There was an error , Please try again');
    }
  }
}
