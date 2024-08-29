import 'package:bloc/bloc.dart';

class PasswordValidationCubit extends Cubit<bool> {
  PasswordValidationCubit() : super(false);

  void validate(String password, String confirmPassword) {
    final isValid = password.isNotEmpty &&
        password == confirmPassword &&
        _isStrongPassword(password);

    emit(isValid);
  }

  bool _isStrongPassword(String password) {
    final regex =
        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$');
    return regex.hasMatch(password);
  }
}
