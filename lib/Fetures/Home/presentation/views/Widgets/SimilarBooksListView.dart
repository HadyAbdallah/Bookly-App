import 'package:bookly/Fetures/Home/presentation/manger/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/Fetures/Home/presentation/views/Widgets/CustomBookItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/Widgets/CustomErrorMessage.dart';
import '../../../../../core/Widgets/CustomLoadingIndicator.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
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
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMassege);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
