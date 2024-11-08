import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomBookItem.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.2),
            child: const CustomBookImage(),
          )
        ],
      ),
    );
  }
}
