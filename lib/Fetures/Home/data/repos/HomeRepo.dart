import 'package:bookly/Fetures/Home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/Failuers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}
