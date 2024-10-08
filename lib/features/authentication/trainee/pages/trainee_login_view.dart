import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/password_visibility_cubit.dart';
import 'package:gym_dream/features/authentication/widgets/dream_gym_text.dart';
import 'package:gym_dream/generated/l10n.dart';

class TraineeLoginView extends StatelessWidget {
  const TraineeLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityCubit(),
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.only(top: 55.h),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const DreamGymText(),
                  SizedBox(height: 16.h),
                  Text(
                    S.of(context).fitnessTailoredJustForYou,
                    style: AppTextStyle.grey400S11,
                  ),
                  SizedBox(height: 30.h),
                  CustomTextFormField(
                    hint: S.of(context).yourPhoneNumber,
                    isLast: false,
                    title: S.of(context).phoneNumber,
                    inputType: InputType.phoneNumber,
                  ),
                  SizedBox(height: 22.h),
                  CustomTextFormField(
                    hint: S.of(context).password,
                    isLast: false,
                    title: S.of(context).password,
                    inputType: InputType.password,
                  ),
                  SizedBox(height: 8.h),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      child: Text(S.of(context).forgotPassword,
                          style: AppTextStyle.blackOpacity500S12),
                      onPressed: () {
                        AppNavigation.navigateTo(
                            context: context,
                            routeName: Routes.forgotPasswordForTrainee);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButton(
                    textStyle: AppTextStyle.white700S16,
                    width: double.infinity,
                    title: S.of(context).login,
                    onPressed: () {
                      AppNavigation.navigateTo(
                          context: context, routeName: Routes.homeUserLayout);
                    },
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: () {
                        AppNavigation.navigateAndReplacement(
                            context: context, newRoute: Routes.adminLogin);
                      },
                      child: Text(
                        S.of(context).adminClickHere,
                        style: AppTextStyle.blue600S8,
                      ),
                    ),
                  ),
                  Hero(
                    tag: 0,
                    child: Image.asset(
                      height: 200.h,
                      AppAsset.trainee,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
