import 'package:bookly/Fetures/Home/presentation/views/Widgets/BookDetailsSection.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/SimilarBooksSection.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
