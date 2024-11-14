import 'package:bookly/Fetures/Home/presentation/views/Widgets/NewestBooksListView.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomAppBar.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/FeaturedListView.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          NewestBooksListView()
        ],
      ),
    );
  }
}
