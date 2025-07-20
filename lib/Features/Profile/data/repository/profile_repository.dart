import 'package:aviz/Features/Profile/data/datasource/profile_datasource.dart';
import 'package:aviz/Features/Profile/data/model/profile.dart';
import 'package:aviz/NetworkUtil/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract class IProfileRepository {
  Future<Either<String, List<Profile>>> getProfile();
}

class ProfileRepository extends IProfileRepository {
  final IProfileDatasource datasource;
  ProfileRepository(this.datasource);

  @override
  Future<Either<String, List<Profile>>> getProfile() async {
    try {
      var response = await datasource.getProfile();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطا محتوای متنی ندارد');
    }
  }
}
