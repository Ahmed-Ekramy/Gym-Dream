import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_cubit.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_state.dart';
import 'package:gym_dream/features/authentication/widgets/confirm_password_text_field.dart';
import 'package:gym_dream/features/authentication/widgets/confirm_password_validate_message.dart';
import 'package:gym_dream/features/authentication/widgets/password_field.dart';
import 'package:gym_dream/features/authentication/widgets/password_validation_messages.dart';

class PasswordForm extends StatelessWidget {
  const PasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePasswordCubit, CreatePasswordState>(
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              const PasswordField(),
              if (state.showValidationMessages)
                PasswordValidationMessages(state: state),
              SizedBox(height: 20.h),
              const ConfirmPasswordField(),
              if (state.showValidationMessages)
                ConfirmPasswordValidationMessages(state: state),
              SizedBox(height: 25.h),
            ],
          ),
        );
      },
    );
  }
}
