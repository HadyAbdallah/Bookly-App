import 'package:bookly/Fetures/Home/presentation/views/Widgets/BooksAction.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomBookItem.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: const CustomBookImage(
            imageURL:
                'https://cdn.shopify.com/s/files/1/0310/7487/7577/files/Y3597HarryPotterandthePrisonerofAzkaban_USROUNDED_5a1e1fb8-1ad5-47f1-b03e-448d5e5bf0ba_1280x.png?v=1724246496',
          ),
        ),
        const SizedBox(
          height: 42,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        /*const SizedBox(
          height: 14,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,rating: 2,count: 2,
        ),*/
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
