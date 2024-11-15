import 'package:bookly/Fetures/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Fetures/Home/data/repos/HomeRepoImpl.dart';
import 'package:bookly/Fetures/Home/presentation/manger/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/Fetures/Home/presentation/views/BookDetailsView.dart';
import 'package:bookly/Fetures/Home/presentation/views/HomeView.dart';
import 'package:bookly/Fetures/Splash/presentation/views/SplashView.dart';
import 'package:bookly/core/utils/serviceLocator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Fetures/Search/presentation/views/SearchView.dart';

abstract class AppRouter {
  static const kHomeViewPath = '/homeView';
  static const kBookDetailsViewPath = '/bookDetailsView';
  static const kSearchViewPath = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchViewPath,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
