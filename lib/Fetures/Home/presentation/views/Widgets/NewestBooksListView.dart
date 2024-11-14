import 'package:bookly/Fetures/Home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/NewestBooksListViewItem.dart';
import 'package:bookly/core/Widgets/CustomErrorMessage.dart';
import 'package:bookly/core/Widgets/CustomLoadingIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorMessage(errMessage: state.errMassege));
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
