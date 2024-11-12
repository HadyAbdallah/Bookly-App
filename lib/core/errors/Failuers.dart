import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessage;

  const Failuer(this.errMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errMessage);
  factory ServerFailuer.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailuer("Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailuer("Receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailuer(
            "Incorrect certificate as configured by [ValidateCertificate] with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailuer("Request to ApiServer was canceld");
      case DioExceptionType.connectionError:
        return ServerFailuer("No Internet Connection");
      case DioExceptionType.unknown:
        return ServerFailuer('Unexpected Error, Please try again!');
      default:
        return ServerFailuer('Unexpected Error, Please try again!');
    }
  }

  factory ServerFailuer.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('You request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailuer('Internal server error, Please try later!');
    } else {
      return ServerFailuer('Opps there war an error, Please try again!');
    }
  }
}
