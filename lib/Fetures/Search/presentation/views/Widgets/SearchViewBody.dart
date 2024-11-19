import 'package:bookly/Fetures/Search/presentation/views/Widgets/CustomSearchTextField.dart';
import 'package:bookly/Fetures/Search/presentation/views/Widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String? search;
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
          const Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}
