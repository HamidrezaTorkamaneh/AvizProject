import 'package:aviz/Features/Category/data/datasource/category_datasource.dart';
import 'package:aviz/Features/Category/data/repository/category_repository.dart';
import 'package:aviz/Features/Home/data/datasource/home_datasource.dart';
import 'package:aviz/Features/Home/data/repository/home_repository.dart';
import 'package:aviz/Features/Search/data/datasource/serach_datasource.dart';
import 'package:aviz/Features/Search/data/repository/search_repository.dart';
import 'package:aviz/NetworkUtil/dio_provider.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var locator = GetIt.instance;

Future<void> getInInit() async {
  locator.registerSingleton<Dio>(DioProvider.createDio());

  locator.registerFactory<IHomeDatasource>(
      () => HomeRemoteDatasource(locator.get()));

  locator.registerFactory<ISearchDatasource>(
      () => SearchRemoteDatasource(locator.get()));

  locator.registerFactory<ICategoryDatasource>(
      () => CategoryRemoteDatasource(locator.get()));

  locator.registerFactory<IHomeRepository>(() => HomeRepository(locator.get()));

  locator.registerFactory<ISearchRepository>(
      () => SearchRepository(locator.get()));

  locator.registerFactory<ICategoryRepository>(
      () => CategoryRepository(locator.get()));
}
