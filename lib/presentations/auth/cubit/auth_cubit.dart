import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../lib.dart';

export 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit(
    this._loginUseCase,
  ) : super(AuthState()) {}

  final LoginUseCase _loginUseCase;

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }

  updateToken(String token) {}

  logout() async {
    final confirm = await AppDialog.confirm(
      'Apakah anda yakin ingin keluar dari akun ini?',
    );
    if (confirm == true) {
      resetUser();
      Fluttertoast.cancel();
      Fluttertoast.showToast(msg: 'Berhasil keluar dari akun');
    }
  }

  // String? get userId {
  //   final localUserId = state.user?.userId;
  //   if (localUserId != null) {
  //     return localUserId;
  //   }

  //   return state.changePassword?.id;
  // }

  resetUser() {
    emit(state.copyWith(
      user: null,
    ));
  }

  login(String email, String password) async {
    AppDialog.loading(message: 'Logging in...');
    final result =
        await _loginUseCase(LoginParam(email: email, password: password));
    AppDialog.hideLoading();
    result.fold(
      (l) {
        AppDialog.error(l.message);
        emit(state.copyWith(user: null));
      },
      (r) => emit(state.copyWith(user: r)),
    );
    router.reevaluateGuards();
  }
}
