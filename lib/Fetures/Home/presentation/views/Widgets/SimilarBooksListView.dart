import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomBookItem.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageURL:
                    'https://cdn.shopify.com/s/files/1/0310/7487/7577/files/Y3597HarryPotterandthePrisonerofAzkaban_USROUNDED_5a1e1fb8-1ad5-47f1-b03e-448d5e5bf0ba_1280x.png?v=1724246496',
              ),
            );
          }),
    );
  }
}
