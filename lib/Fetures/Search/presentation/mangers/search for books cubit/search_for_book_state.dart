part of 'search_for_book_cubit.dart';

abstract class SearchForBookState extends Equatable {
  const SearchForBookState();

  @override
  List<Object> get props => [];
}

class SearchForBookInitial extends SearchForBookState {}

class SearchForBookSuccess extends SearchForBookState {
  final List<BookModel> books;

  const SearchForBookSuccess({required this.books});
}

class SearchForBookLoading extends SearchForBookState {}

class SearchForBookFailure extends SearchForBookState {
  final String errMassege;

  const SearchForBookFailure({required this.errMassege});
}
