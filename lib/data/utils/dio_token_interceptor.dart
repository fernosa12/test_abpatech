import 'dart:io';

import 'package:dio/dio.dart';
import 'package:test_clean_architecture/presentations/auth/cubit/auth_cubit.dart';

import '../../router/router.dart';
// import 'package:flutter_news_app/config/flavor_config.dart';

class DioTokenInterceptor implements InterceptorsWrapper {
  // final AuthCubit authCubit;
  final AuthCubit Function() getAuthCubit;
  final AppRouter router;

  DioTokenInterceptor(this.getAuthCubit, this.router);
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      getAuthCubit().resetUser();
    }
    return handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var currentUser = getAuthCubit().state.user;
    // var loginData = {

    //   'version': AppConfig.package.version,
    //   'buildNumber': AppConfig.package.buildNumber,
    // }.map((key, value) => MapEntry(key, value.toString()));
    // if (options.method == 'POST') {
    //   if (options.data is FormData) {
    //     (options.data as FormData).fields.addAll(loginData.entries);
    //   }
    // } else {
    //   options.queryParameters.addAll(loginData);
    // }
    if (currentUser?.token != null) {
      options.headers['Authorization'] = 'Bearer ${currentUser?.token}';
    }

    /// xxx url encode if post
    // if (options.method == 'POST') {
    //   options.headers['Content-Type'] = 'application/x-www-form-urlencoded';
    // }
    if (options.data is Map &&
        (options.data as Map).containsKey('dio.user_id')) {
      options.data = <String, dynamic>{
        ...options.data,
        'userId': currentUser?.userId,
      };
    } else if (options.queryParameters.containsKey('dio.user_id')) {
      options.queryParameters = <String, dynamic>{
        ...options.queryParameters,
        'userId': currentUser?.userId,
      };
    } else if (options.data is FormData &&
        (options.data as FormData)
            .fields
            .any((element) => element.key == 'dio.user_id')) {
      options.data.fields.add(MapEntry('userId', currentUser?.userId));
    }
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }
}

Map get useUserId {
  return {
    'dio.user_id': true,
  };
}
