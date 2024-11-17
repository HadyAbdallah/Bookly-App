import 'package:bookly/Fetures/Search/presentation/mangers/search%20for%20books%20cubit/search_for_book_cubit.dart';
import 'package:bookly/Fetures/Search/presentation/views/Widgets/CustomSearchTextField.dart';
import 'package:bookly/Fetures/Search/presentation/views/Widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/Widgets/CustomErrorMessage.dart';
import '../../../../../core/Widgets/CustomLoadingIndicator.dart';
import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String? search;
    return BlocBuilder<SearchForBookCubit, SearchForBookState>(
        builder: (context, state) {
      if (state is SearchForBookInitial) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextField(
            search: search,
          ),
        );
      } else if (state is SearchForBookSuccess) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(
                search: search,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Search Result",
                style: Styles.textStyle18,
              ),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: SearchResultListView(
                  books: state.books,
                ),
              )
            ],
          ),
        );
      } else if (state is SearchForBookFailure) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(
                search: search,
              ),
              Expanded(child: CustomErrorMessage(errMessage: state.errMassege))
            ],
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchTextField(
                search: search,
              ),
              const Expanded(child: CustomLoadingIndicator())
            ],
          ),
        );
      }
    });
  }
}
