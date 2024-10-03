import 'package:bookly/Fetures/splash/presentation/views/SplashView.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ).copyWith(scaffoldBackgroundColor: kPrimryColor),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
