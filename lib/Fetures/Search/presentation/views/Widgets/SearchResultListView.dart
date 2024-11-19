import 'package:bookly/Fetures/Search/presentation/mangers/search%20for%20books%20cubit/search_for_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/Widgets/CustomLoadingIndicator.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../Home/presentation/views/Widgets/NewestBooksListViewItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchForBookCubit, SearchForBookState>(
        builder: (context, state) {
      if (state is SearchForBookSuccess) {
        return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            });
      } else if (state is SearchForBookFailure) {
        return const Center(
          child: Text(
            'There are no matching books, Please search again.',
            textAlign: TextAlign.center,
            style: Styles.textStyle20,
          ),
        );
      } else if (state is SearchForBookLoading) {
        return const CustomLoadingIndicator();
      } else {
        return const Center(
          child: Text(
            'Search for books.',
            textAlign: TextAlign.center,
            style: Styles.textStyle20,
          ),
        );
      }
    });
  }
}
