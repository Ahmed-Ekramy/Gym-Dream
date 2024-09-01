import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/password%20visibility%20cubit/password_visibility_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../manager/create password cubit/create_password_cubit.dart';
import '../../manager/create password cubit/create_password_state.dart';
import '../../widgets/back_icon.dart';

class CreateNewPasswordForTrainee extends StatelessWidget {
  const CreateNewPasswordForTrainee({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PasswordVisibilityCubit()),
        BlocProvider(create: (_) => CreatePasswordCubit()),
      ],
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                const BackIcon(),
                SizedBox(height: 30.h),
                _buildTitle(context),
                SizedBox(height: 10.h),
                _buildSubtitle(context),
                SizedBox(height: 10.h),
                _buildPasswordForm(context),
                _buildInstructions(context),
                SizedBox(height: 130.h),
                _buildSaveButton(context),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      S.of(context).createNewPassword,
      style: AppTextStyle.black700S22,
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Text(
      S.of(context).enterYourNewPassword,
      style: AppTextStyle.gray500S14,
    );
  }

  Widget _buildPasswordForm(BuildContext context) {
    return BlocBuilder<CreatePasswordCubit, CreatePasswordState>(
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              CustomTextFormField(
                onChanged: (data) {
                  context.read<CreatePasswordCubit>().passwordChanged(data);
                },
                inputType: InputType.createPassword,
                hint: S.of(context).password,
                isLast: false,
                title: S.of(context).password,
              ),
              if (state.showValidationMessages)
                _buildPasswordValidationMessages(context, state),
              SizedBox(height: 20.h),
              CustomTextFormField(
                onChanged: (data) {
                  context
                      .read<CreatePasswordCubit>()
                      .confirmPasswordChanged(data);
                },
                hint: S.of(context).confirmPassword,
                isLast: true,
                title: S.of(context).confirmPassword,
                inputType: InputType.confirmPassword,
              ),
              if (state.showValidationMessages)
                _buildConfirmPasswordValidationMessages(context, state),
              SizedBox(height: 25.h),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPasswordValidationMessages(
      BuildContext context, CreatePasswordState state) {
    if (state.isPasswordEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          S.of(context).pleaseEnterYourPassword,
          style: const TextStyle(color: Colors.red),
        ),
      );
    } else if (!state.isPasswordLongEnough || !state.isPasswordStrong) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          !state.isPasswordLongEnough
              ? S.of(context).passwordMustBeAtLeast8CharactersLong
              : S.of(context).useDifferentTypesOfCharacters,
          style: const TextStyle(color: Colors.red),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildConfirmPasswordValidationMessages(
      BuildContext context, CreatePasswordState state) {
    if (state.isConfirmPasswordEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          S.of(context).pleaseEnterYourPassword,
          style: const TextStyle(color: Colors.red),
        ),
      );
    } else if (!state.passwordsMatch) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          S.of(context).passwordDoesNotMatch,
          style: const TextStyle(color: Colors.red),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildInstructions(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).instructions,
          style: AppTextStyle.black600S16,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).useDifferentTypesOfCharacters,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).uppercaseLettersAZ,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).owerCaseLettersAz,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).numbers09,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).specialSymbolsSuchAs,
          style: AppTextStyle.gray400S14,
        ),
      ],
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return BlocBuilder<CreatePasswordCubit, CreatePasswordState>(
      builder: (context, state) {
        return CustomButton(
          width: double.infinity,
          title: S.of(context).save,
          onPressed: () {
            if (context.read<CreatePasswordCubit>().submitForm()) {
              AppNavigation.navigateAndRemoveUntil(
                context: context,
                newRoute: Routes.passwordChangedSuccessfullyForAdmin,
              );
            }
          },
        );
      },
    );
  }
}
