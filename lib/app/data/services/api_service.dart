import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

import 'package:hackathon4/app/data/constants.dart';
import '../services/auth_service.dart';

class ApiService extends GetxService {
  Dio httpClient = Dio(
    BaseOptions(
      baseUrl: "${Constants.BASE_URL}v1/",
      contentType: 'application/json; charset=UTF-8',
    ),
  );

  AuthService get _auth => Get.find<AuthService>();
  String get uid => _auth.uid;
  set uid(String s) => _auth.uid = s;

  ApiService();

  Future<ApiService> init() async {
    httpClient.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        if (_auth.accessToken != null &&
            !options.headers.keys.contains(HttpHeaders.RefreshToken)) {
          var h = options.headers;
          h[HttpHeaders.AccessToken] = _auth.accessToken;
          RequestOptions newOpt = options.copyWith(headers: h);
          handler.next(newOpt);
        } else {
          handler.next(options);
        }
      },
      onError: (DioException e, ErrorInterceptorHandler handler) async {
        if (e.response?.statusCode == HttpStatus.unauthorized) {
          if (e.requestOptions.extra['isRetry'] == null) {
            await _auth.refreshTokens();
            log("SUCCESSFULL REFRESH", time: DateTime.now());
            var newRequest = await httpClient.fetch(
              e.requestOptions.copyWith(
                extra: {'isRetry': true},
              ),
            );
            return handler.resolve(newRequest);
          } else {
            await _auth.logout();
          }
        }
        if (e.response != null) {
          return handler.resolve(e.response as Response);
        } else {
          return handler.reject(e);
        }
      },
    ));
    return this;
  }

  Future<Response> request(String path,
      {HttpMethod method = HttpMethod.GET, dynamic data}) async {
    try {
      var response = await httpClient.request(path,
          data: data, options: Options(method: method.name));
      return response;
    } catch (e) {
      return Response(requestOptions: RequestOptions());
    }
  }
}
