import 'package:bookly/Fetures/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/Widgets/NewestBooksListViewItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(
              bookModel: books[index],
            ),
          );
        });
  }
}
