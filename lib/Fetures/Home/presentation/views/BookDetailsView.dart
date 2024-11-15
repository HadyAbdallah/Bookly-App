import 'package:bookly/Fetures/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Fetures/Home/presentation/manger/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchNewestBooks(category: "category");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
