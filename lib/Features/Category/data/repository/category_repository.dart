import 'package:aviz/Features/Category/data/datasource/category_datasource.dart';
import 'package:aviz/NetworkUtil/api_exception.dart';
import 'package:dartz/dartz.dart';

import '../model/category.dart';

abstract class ICategoryRepository {
  Future<Either<String, List<Category>>> getCategories();
}

class CategoryRepository extends ICategoryRepository {
  final ICategoryDatasource datasource;
  CategoryRepository(this.datasource);
  @override
  Future<Either<String, List<Category>>> getCategories() async {
    try {
      var response = await datasource.getCategories();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطا محتوای متنی ندارد');
    }
  }
}
