import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_state.dart';

class CreatePasswordCubit extends Cubit<CreatePasswordState> {
  CreatePasswordCubit() : super(const CreatePasswordState());

  /// Updates the state when the password changes
  void passwordChanged(String? password) {
    final isPasswordEmpty = password == null || password.isEmpty;
    final isPasswordLongEnough = password != null && password.length >= 8;
    final isPasswordStrong = password != null && _isStrongPassword(password);
    final passwordsMatch = password == state.confirmPassword;

    emit(state.copyWith(
      password: password ?? '',
      isPasswordEmpty: isPasswordEmpty,
      isPasswordLongEnough: isPasswordLongEnough,
      isPasswordStrong: isPasswordStrong,
      passwordsMatch: passwordsMatch,
    ));
  }

  /// Updates the state when the confirm password changes
  void confirmPasswordChanged(String? confirmPassword) {
    final isConfirmPasswordEmpty =
        confirmPassword == null || confirmPassword.isEmpty;
    final passwordsMatch = confirmPassword == state.password;

    emit(state.copyWith(
      confirmPassword: confirmPassword ?? '',
      isConfirmPasswordEmpty: isConfirmPasswordEmpty,
      passwordsMatch: passwordsMatch,
    ));
  }

  /// Validates the form and updates the state
  bool submitForm() {
    final isPasswordEmpty = state.password.isEmpty;
    final isConfirmPasswordEmpty = state.confirmPassword.isEmpty;
    final isPasswordLongEnough = state.password.length >= 8;
    final isPasswordStrong = _isStrongPassword(state.password);
    final passwordsMatch = state.password == state.confirmPassword;

    final isFormValid = !isPasswordEmpty &&
        !isConfirmPasswordEmpty &&
        passwordsMatch &&
        isPasswordStrong &&
        isPasswordLongEnough;

    emit(state.copyWith(
      isPasswordEmpty: isPasswordEmpty,
      isConfirmPasswordEmpty: isConfirmPasswordEmpty,
      isPasswordLongEnough: isPasswordLongEnough,
      isPasswordStrong: isPasswordStrong,
      passwordsMatch: passwordsMatch,
      showValidationMessages: true,
    ));

    return isFormValid;
  }

  /// Checks if the password is strong
  bool _isStrongPassword(String value) {
    final regex =
        RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$');
    return regex.hasMatch(value);
  }
}
