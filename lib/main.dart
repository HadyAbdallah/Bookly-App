import 'package:bookly/Fetures/Home/presentation/views/HomeView.dart';
import 'package:bookly/Fetures/Splash/presentation/views/SplashView.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: HomeView.id, page: () => const HomeView()),
        GetPage(name: SplashView.id, page: () => const SplashView()),
      ],
      theme: ThemeData(
        brightness: Brightness.dark,
      ).copyWith(scaffoldBackgroundColor: kPrimryColor),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.id,
    );
  }
}
