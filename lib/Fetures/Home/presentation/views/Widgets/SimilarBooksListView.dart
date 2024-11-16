import 'package:bookly/Fetures/Home/presentation/manger/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomBookItem.dart';
import 'package:bookly/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/Widgets/CustomErrorMessage.dart';
import '../../../../../core/Widgets/CustomLoadingIndicator.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetailsViewPath,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookImage(
                        imageURL: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            '',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMassege);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
