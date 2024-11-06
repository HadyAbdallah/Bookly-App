import 'package:bookly/Fetures/Home/presentation/views/BookDetailsView.dart';
import 'package:bookly/Fetures/Home/presentation/views/HomeView.dart';
import 'package:bookly/Fetures/Splash/presentation/views/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeViewPath = '/homeView';
  static const kBookDetailsViewPath = '/bookDetailsView';
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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
