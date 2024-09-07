import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_status.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isLoggedIn = prefs.getBool('isLoggedIn');
    bool? isAdmin = prefs.getBool('isAdmin');

    if (isLoggedIn == true) {
      emit(AuthLoggedIn(isAdmin: isAdmin ?? false));
    } else {
      emit(AuthLoggedOut());
    }
  }

  Future<void> login({required bool isAdmin}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setBool('isAdmin', isAdmin);
    emit(AuthLoggedIn(isAdmin: isAdmin));
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    await prefs.setBool('isAdmin', false);
    emit(AuthLoggedOut());
  }
}
