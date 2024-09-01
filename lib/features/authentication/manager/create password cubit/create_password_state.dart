class CreatePasswordState {
  final String password;
  final String confirmPassword;
  final bool passwordsMatch;
  final bool isPasswordStrong;
  final bool isPasswordLongEnough;
  final bool isPasswordEmpty;
  final bool isConfirmPasswordEmpty;
  final bool showValidationMessages;

  const CreatePasswordState({
    this.password = '',
    this.confirmPassword = '',
    this.passwordsMatch = true,
    this.isPasswordStrong = true,
    this.isPasswordLongEnough = true,
    this.isPasswordEmpty = true,
    this.isConfirmPasswordEmpty = true,
    this.showValidationMessages = false,
  });

  CreatePasswordState copyWith({
    String? password,
    String? confirmPassword,
    bool? passwordsMatch,
    bool? isPasswordStrong,
    bool? isPasswordLongEnough,
    bool? isPasswordEmpty,
    bool? isConfirmPasswordEmpty,
    bool? showValidationMessages,
  }) {
    return CreatePasswordState(
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      passwordsMatch: passwordsMatch ?? this.passwordsMatch,
      isPasswordStrong: isPasswordStrong ?? this.isPasswordStrong,
      isPasswordLongEnough: isPasswordLongEnough ?? this.isPasswordLongEnough,
      isPasswordEmpty: isPasswordEmpty ?? this.isPasswordEmpty,
      isConfirmPasswordEmpty:
          isConfirmPasswordEmpty ?? this.isConfirmPasswordEmpty,
      showValidationMessages:
          showValidationMessages ?? this.showValidationMessages,
    );
  }
}
