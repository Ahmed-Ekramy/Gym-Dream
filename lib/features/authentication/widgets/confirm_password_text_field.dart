import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onChanged: (data) {
        context.read<CreatePasswordCubit>().confirmPasswordChanged(data);
      },
      inputType: InputType.confirmPassword,
      hint: S.of(context).confirmPassword,
      isLast: true,
      title: S.of(context).confirmPassword,
    );
  }
}
