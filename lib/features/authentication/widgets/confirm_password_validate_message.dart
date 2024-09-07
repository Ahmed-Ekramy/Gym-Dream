import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_state.dart';
import 'package:gym_dream/generated/l10n.dart';

class ConfirmPasswordValidationMessages extends StatelessWidget {
  final CreatePasswordState state;

  const ConfirmPasswordValidationMessages({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.isConfirmPasswordEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          S.of(context).pleaseEnterYourPassword,
          style: AppTextStyle.redBlood700S18,
        ),
      );
    } else if (!state.passwordsMatch) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          S.of(context).passwordDoesNotMatch,
          style: AppTextStyle.redBlood700S18,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
