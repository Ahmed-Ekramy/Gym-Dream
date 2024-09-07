import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_state.dart';
import 'package:gym_dream/generated/l10n.dart';

class PasswordValidationMessages extends StatelessWidget {
  final CreatePasswordState state;

  const PasswordValidationMessages({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.isPasswordEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          S.of(context).pleaseEnterYourPassword,
          style: AppTextStyle.redBlood700S18,
        ),
      );
    } else if (!state.isPasswordLongEnough || !state.isPasswordStrong) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          !state.isPasswordLongEnough
              ? S.of(context).passwordMustBeAtLeast8CharactersLong
              : S.of(context).useDifferentTypesOfCharacters,
          style: AppTextStyle.redBlood700S18,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
