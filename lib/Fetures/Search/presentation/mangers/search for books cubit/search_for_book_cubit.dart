import 'package:bloc/bloc.dart';
import 'package:bookly/Fetures/Search/data/repos/SearchRepo.dart';
import 'package:equatable/equatable.dart';

import '../../../../Home/data/models/book_model/book_model.dart';

part 'search_for_book_state.dart';

class SearchForBookCubit extends Cubit<SearchForBookState> {
  SearchForBookCubit(this.searchRepo) : super(SearchForBookInitial());
  final SearchRepo searchRepo;
  Future<void> searchForBooks({required String q}) async {
    emit(SearchForBookLoading());
    var result = await searchRepo.searchForBooks(q: q);
    result.fold((failuer) {
      emit(SearchForBookFailure(errMassege: failuer.errMessage));
    }, (books) {
      emit(SearchForBookSuccess(books: books));
    });
  }
}
