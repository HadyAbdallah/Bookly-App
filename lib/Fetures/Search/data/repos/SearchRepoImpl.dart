import 'package:bookly/Fetures/Home/data/models/book_model/book_model.dart';

import 'package:bookly/core/errors/Failuers.dart';
import 'package:bookly/core/utils/ApiService.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'SearchRepo.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl({required this.apiService});

  final ApiService apiService;
  @override
  Future<Either<Failuer, List<BookModel>>> searchForBooks(
      {required String q}) async {
    try {
      var data =
          await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=$q');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailuer.fromDioException(e));
      }
      return Left(ServerFailuer(e.toString()));
    }
  }
}
