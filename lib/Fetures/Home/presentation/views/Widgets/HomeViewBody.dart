import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomAppBar.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/ListViewItem.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(),
          ListViewItem(),
        ],
      ),
    );
  }
}
