import 'package:dio/dio.dart';

import '../../../lib.dart';

abstract class AuthApi {
  Future<ApiResponse<LocalUser>> login(String email, String password);
}

class AuthApiImpl implements AuthApi {
  final Dio dio;

  AuthApiImpl(this.dio);

  @override
  Future<ApiResponse<LocalUser>> login(String email, String password) async {
    final response = await dio.post(
      '/api/login',
      data: {
        'email': email,
        'password': password,
      },
    );
    return ApiResponse.fromResponse(response, (json) {
      return LocalUser.fromJson(json['data']);
    });
  }
}
