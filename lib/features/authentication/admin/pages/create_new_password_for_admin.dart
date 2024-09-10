import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../manager/create password cubit/create_password_cubit.dart';
import '../../manager/create password cubit/create_password_state.dart';
import '../../manager/password visibility cubit/password_visibility_cubit.dart';
import '../../widgets/back_icon.dart';
import '../../widgets/custom_text_form_field.dart';

class CreateNewPasswordForAdmin extends StatelessWidget {
  const CreateNewPasswordForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PasswordVisibilityCubit()),
        BlocProvider(create: (_) => CreatePasswordCubit()),
      ],
      child: Scaffold(
        floatingActionButton: const SaveButton(),
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
                const TitleSection(),
                SizedBox(height: 10.h),
                const SubtitleSection(),
                SizedBox(height: 10.h),
                const PasswordForm(),
                const InstructionsSection(),
                // SizedBox(height: 130.h),
                // const SaveButton(),
                // SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).createNewPassword,
      style: AppTextStyle.black700S22,
    );
  }
}

class SubtitleSection extends StatelessWidget {
  const SubtitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).enterYourNewPassword,
      style: AppTextStyle.gray500S14,
    );
  }
}

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
          style: AppTextStyle.redBlood500S14,
        ),
      );
    } else if (!state.isPasswordLongEnough || !state.isPasswordStrong) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          !state.isPasswordLongEnough
              ? S.of(context).passwordMustBeAtLeast8CharactersLong
              : S.of(context).useDifferentTypesOfCharacters,
          style: AppTextStyle.redBlood500S14,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

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
          style: AppTextStyle.redBlood500S14,
        ),
      );
    } else if (!state.passwordsMatch) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          S.of(context).passwordDoesNotMatch,
          style: AppTextStyle.redBlood500S14,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

class InstructionsSection extends StatelessWidget {
  const InstructionsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
}

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
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
