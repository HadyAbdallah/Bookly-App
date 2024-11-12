import 'package:dio/dio.dart';

class ApiService {
  ApiService({required this.dio});

  final String _baseURL = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get("$_baseURL$endPoint");
    return response.data;
  }
}
