import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/user/auth/cubits/password_visibility_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../widgets/back_icon.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordVisibilityCubit(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                const BackIcon(),
                SizedBox(height: 40.h),
                Text(
                  S.of(context).createNewPassword,
                  style: AppTextStyle.black700S22,
                ),
                SizedBox(height: 20.h),
                Text(
                  S.of(context).enterYourNewPassword,
                  style: AppTextStyle.gray500S14,
                ),
                SizedBox(height: 20.h),
                CustomTextFormField(
                  inputType: InputType.password,
                  hint: S.of(context).password,
                  isLast: false,
                  title: S.of(context).password,
                ),
                SizedBox(height: 20.h),
                CustomTextFormField(
                  hint: S.of(context).confirmPassword,
                  isLast: true,
                  title: S.of(context).confirmPassword,
                  inputType: InputType.password,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  S.of(context).instructions,
                  style: AppTextStyle.black600S16,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  S.of(context).useDifferentTypesOfCharacters,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  S.of(context).uppercaseLettersAZ,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  S.of(context).owerCaseLettersAz,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  S.of(context).numbers09,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  S.of(context).specialSymbolsSuchAs,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 90.h,
                ),
                CustomButton(
                  width: double.infinity,
                  title: S.of(context).save,
                  onPressed: () {
                    AppNavigation.navigateTo(
                      context: context,
                      routeName: Routes.passwordChangedSuccessfully,
                    );
                  },
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
