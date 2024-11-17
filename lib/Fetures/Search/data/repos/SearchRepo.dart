import 'package:dartz/dartz.dart';

import '../../../../core/errors/Failuers.dart';
import '../../../Home/data/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failuer, List<BookModel>>> searchForBooks({required String q});
}
