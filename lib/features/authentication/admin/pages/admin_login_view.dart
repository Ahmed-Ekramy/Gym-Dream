import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/otp%20cubit/validation_cubit.dart';
import 'package:gym_dream/features/authentication/manager/password%20visibility%20cubit/password_visibility_cubit.dart';
import 'package:gym_dream/features/authentication/widgets/custom_text_form_field.dart';
import 'package:gym_dream/features/authentication/widgets/dream_gym_text.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminLoginView extends StatelessWidget {
  const AdminLoginView({super.key});

  void _validateAndNavigate(BuildContext context, GlobalKey<FormState> formKey,
      ValidationCubit validationCubit) {
    if (formKey.currentState?.validate() ?? false) {
      AppNavigation.navigateTo(
        context: context,
        routeName: Routes.homeAdminLayout,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PasswordVisibilityCubit()),
        BlocProvider(create: (_) => ValidationCubit()),
      ],
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.only(top: 55.h),
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
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
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).pleaseEnterYourPhoneNumber;
                        }
                        if (!(value.startsWith('010') ||
                            value.startsWith('011') ||
                            value.startsWith('012') ||
                            value.startsWith('015'))) {
                          return S.of(context).phoneNumberMustStartWith01;
                        }
                        if (value.length != 11) {
                          return S.of(context).phoneNumberMustBe11DigitsLong;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 22.h),
                    CustomTextFormField(
                      hint: S.of(context).password,
                      isLast: false,
                      title: S.of(context).password,
                      inputType: InputType.password,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).pleaseEnterYourPassword;
                        }
                        if (value.length < 8) {
                          return S
                              .of(context)
                              .passwordMustBeAtLeast8CharactersLong;
                        }
                        return null;
                      },
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
                              routeName: Routes.forgotPasswordForAdmin);
                        },
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Builder(
                      builder: (context) => CustomButton(
                        textStyle: AppTextStyle.white700S16,
                        width: double.infinity,
                        title: S.of(context).login,
                        onPressed: () {
                          _validateAndNavigate(
                            context,
                            formKey,
                            context.read<ValidationCubit>(),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextButton(
                        onPressed: () {
                          AppNavigation.navigateAndReplacement(
                              context: context, newRoute: Routes.traineeLogin);
                        },
                        child: Text(
                          S.of(context).userClickHere,
                          style: AppTextStyle.blue600S8,
                        ),
                      ),
                    ),
                    Hero(
                      tag: 1,
                      child: Image.asset(
                        height: 200.h,
                        AppAsset.admin,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
