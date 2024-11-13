import 'package:bookly/Fetures/Home/data/repos/HomeRepoImpl.dart';
import 'package:bookly/Fetures/Home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/appRouter.dart';
import 'package:bookly/core/utils/serviceLocator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Fetures/Home/presentation/manger/newest books cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData(
          brightness: Brightness.dark,
        ).copyWith(
          scaffoldBackgroundColor: kPrimryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
