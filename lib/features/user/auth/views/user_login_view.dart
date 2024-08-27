import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/user/auth/cubits/password_visibility_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

class UserLogInView extends StatelessWidget {
  const UserLogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityCubit(),
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.only(top: 45.h),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${S.of(context).dream} ',
                          style: AppTextStyle.black600S48,
                        ),
                        Text(
                          S.of(context).gym,
                          style: AppTextStyle.orange600S48,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    S.of(context).fitnessTailoredJustForYou,
                    style: AppTextStyle.grey400S11,
                  ),
                  SizedBox(height: 30.h),
                  CustomTextFormField(
                    hint: '010********',
                    isLast: false,
                    title: S.of(context).phoneNumber,
                    inputType: InputType.phoneNumber,
                  ),
                  SizedBox(height: 22.h),
                  CustomTextFormField(
                    hint: '********',
                    isLast: false,
                    title: S.of(context).password,
                    inputType: InputType.password,
                  ),
                  SizedBox(height: 23.h),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      S.of(context).forgotPassword,
                      style: AppTextStyle.blackOpacity500S12,
                    ),
                  ),
                  SizedBox(height: 58.h),
                  CustomButton(
                    title: S.of(context).login,
                    onPressed: () {},
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        S.of(context).adminClickHere,
                        style: AppTextStyle.blue600S8,
                      ),
                    ),
                  ),
                  Image.asset(AppAsset.login)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
