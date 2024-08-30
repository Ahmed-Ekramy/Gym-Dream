import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/password_visibility_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../widgets/back_icon.dart';

class CreateNewPasswordForAdmin extends StatelessWidget {
  const CreateNewPasswordForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordVisibilityCubit(),
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
                Text(
                  S.of(context).createNewPassword,
                  style: AppTextStyle.black700S22,
                ),
                SizedBox(height: 10.h),
                Text(
                  S.of(context).enterYourNewPassword,
                  style: AppTextStyle.gray500S14,
                ),
                SizedBox(height: 10.h),
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
                  height: 10.h,
                ),
                Text(
                  S.of(context).useDifferentTypesOfCharacters,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).uppercaseLettersAZ,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).owerCaseLettersAz,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).numbers09,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).specialSymbolsSuchAs,
                  style: AppTextStyle.gray400S14,
                ),
                SizedBox(
                  height: 130.h,
                ),
                CustomButton(
                  width: double.infinity,
                  title: S.of(context).save,
                  onPressed: () {
                    AppNavigation.navigateAndRemoveUntil(
                      context: context,
                      newRoute: Routes.passwordChangedSuccessfullyForAdmin,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
