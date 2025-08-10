import 'package:dio/dio.dart';

abstract class Failure {}

class ServerFailure extends Failure {
  final String errorMessage;

  ServerFailure({required this.errorMessage});

  factory ServerFailure.fromDioError(DioException dioErroe) {
    switch (dioErroe.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'badCertificate , Please try later');
      case DioExceptionType.badResponse:
        // if (dioErroe.response != null) {
//   return ServerFailure.fromResponce(...);
// } else {
//   return ServerFailure(errorMessage: 'Bad response with no data');
// }
        return ServerFailure.fromResponce(
            dioErroe.response!.statusCode!, dioErroe.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errorMessage: 'Unexpected error , Please try later');
    }
  }

  factory ServerFailure.fromResponce(int statusCode, dynamic responce) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: responce['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your request not found , Please try later');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'Internal Server error , Please try later');
    } else {
      return ServerFailure(
          errorMessage: 'Opps There was an error , Please try again');
    }
  }
}
