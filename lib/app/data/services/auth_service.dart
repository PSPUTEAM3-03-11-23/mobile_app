import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/data/models/jwt_model/jwt_model.dart';
import 'package:hackathon4/app/data/models/user/user.dart';
import 'package:hackathon4/app/data/providers/api_endpoints.dart';
import 'package:hackathon4/app/data/constants.dart';
import 'package:hackathon4/app/data/services/storage_service.dart';

class AuthService extends GetxService {
  static AuthService get instance => Get.find();
  var isLogged = false;
  JwtModel _tokens = JwtModel(refresh: '');
  StorageService get _storage => Get.find<StorageService>();
  String uid = '';
  var client = Dio(
    BaseOptions(
      baseUrl: Constants.BASE_URL,
      contentType: 'application/json; charset=UTF-8',
    ),
  );
  String? get accessToken => _tokens.access;
  Future<AuthService> init() async {
    isLogged = await refreshTokens();
    return this;
  }

  Future<void> updateTokens(JwtModel tokens, {String? uid}) async {
    _tokens = tokens;
    await _storage.setRefreshToken(_tokens.refresh, uid: uid);
  }

  Future<void> clearTokens() async {
    isLogged = false;
    var tokens = JwtModel(refresh: '');
    await updateTokens(tokens);
    Get.offAllNamed('/login');
  }

  Future<bool> refreshTokens() async {
    try {
      Map<String, dynamic> map = {};
      var refreshToken = await _storage.getRefresh();
      if (refreshToken == null) throw "No token.";
      map.addEntries([MapEntry(HttpHeaders.RefreshToken, refreshToken)]);
      var result = await client.post(ApiEndpoints.refreshTokens,
          options: Options(headers: map));
      if (result.statusCode == 200) {
        var newTokens = JwtModel.fromJson(result.data);
        uid = result.data['uid'];
        await updateTokens(newTokens);
        return true;
      }
      return false;
    } on DioException catch (e) {
      printError(info: "Refresh tokens error!");
      printError(info: e.toString());
      return false;
    } catch (e) {
      printError(info: e.toString());
      return false;
    }
  }

  Future<String> sign(User user, String type) async {
    try {
      final response = await client.post(type, data: user.toJson());
      if (kDebugMode) {
        print(response);
      }
      var tokens = JwtModel.fromJson(response.data);
      uid = response.data['uid'];
      updateTokens(tokens);
      if (kDebugMode) {
        print(uid);
      }
      return Constants.SUCCESS;
    } catch (e) {
      return 'Не удалось войти';
    }
  }

  Future<String> login(User user) => sign(user, ApiEndpoints.signIn);

  Future<String> register(User user) => sign(user, ApiEndpoints.signUp);

  Future<void> logout() async => await clearTokens();
}
