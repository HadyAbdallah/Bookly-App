import 'package:bookly/Fetures/Home/data/models/book_model/book_model.dart';
import 'package:bookly/core/Widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/launcheUrl.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              textColor: Colors.black,
              backgroundColor: Colors.white,
              text: "Free",
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                launcheCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              textColor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
              text: bookModel.volumeInfo.previewLink != null
                  ? "Preview"
                  : "Not Available",
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
