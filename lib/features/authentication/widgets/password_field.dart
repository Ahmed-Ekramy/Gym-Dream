import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onChanged: (data) {
        context.read<CreatePasswordCubit>().passwordChanged(data);
      },
      inputType: InputType.createPassword,
      hint: S.of(context).password,
      isLast: false,
      title: S.of(context).password,
    );
  }
}
