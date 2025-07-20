import 'package:aviz/Features/Profile/data/model/profile.dart';
import 'package:aviz/NetworkUtil/api_exception.dart';
import 'package:dio/dio.dart';

abstract class IProfileDatasource {
  Future<List<Profile>> getProfile();
}

class ProfileRemoteDatasource extends IProfileDatasource {
  final Dio _dio;

  ProfileRemoteDatasource(this._dio);
  @override
  Future<List<Profile>> getProfile() async {
    try {
      var response = await _dio.get(
        'collections/profile/records',
      );
      return response.data['items']
          .map<Profile>((jsonObject) => Profile.fromJson(jsonObject))
          .toList();
    } on DioException catch (dioException) {
      throw ApiException(
          dioException.response?.statusCode ?? 0, dioException.message);
    } catch (ex) {
      throw ApiException(0, 'unknwon');
    }
  }
}
