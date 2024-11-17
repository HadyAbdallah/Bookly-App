import 'package:bookly/Fetures/Search/presentation/mangers/search%20for%20books%20cubit/search_for_book_cubit.dart';
import 'package:bookly/Fetures/Search/presentation/views/Widgets/SearchViewBody.dart';
import 'package:bookly/core/utils/serviceLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/SearchRepoImpl.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchForBookCubit(getIt.get<SearchRepoImpl>()),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
