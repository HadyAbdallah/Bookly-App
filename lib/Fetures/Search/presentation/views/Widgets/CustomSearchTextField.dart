import 'package:bookly/Fetures/Search/presentation/mangers/search%20for%20books%20cubit/search_for_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key, required this.search});
  String? search;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        search = value;
      },
      onSubmitted: (value) {
        search = value;
        BlocProvider.of<SearchForBookCubit>(context).searchForBooks(q: search!);
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Seach for a book',
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchForBookCubit>(context)
                .searchForBooks(q: search!);
          },
          icon: const Opacity(
            opacity: 0.8,
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
