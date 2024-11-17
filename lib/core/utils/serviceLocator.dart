import 'package:bookly/Fetures/Home/data/repos/HomeRepoImpl.dart';
import 'package:bookly/core/utils/ApiService.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Fetures/Search/data/repos/SearchRepoImpl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
