import 'package:bookly/Fetures/Search/presentation/views/Widgets/CustomSearchTextField.dart';
import 'package:bookly/Fetures/Search/presentation/views/Widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Search Result",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 4,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
