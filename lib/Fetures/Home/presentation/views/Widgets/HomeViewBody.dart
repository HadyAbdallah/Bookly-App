import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomAppBar.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/FeaturedListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}
