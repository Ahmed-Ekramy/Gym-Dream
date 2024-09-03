import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/otp%20cubit/validation_cubit.dart';
import 'package:gym_dream/features/authentication/manager/password%20visibility%20cubit/password_visibility_cubit.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/features/authentication/widgets/custom_text_form_field.dart';
import 'package:gym_dream/features/authentication/widgets/title_section.dart';
import 'package:gym_dream/generated/l10n.dart';

class ForgotPasswordForAdmin extends StatelessWidget {
  const ForgotPasswordForAdmin({super.key});

  void _validateAndNavigate(BuildContext context, GlobalKey<FormState> formKey,
      ValidationCubit validationCubit) {
    if (formKey.currentState?.validate() ?? false) {
      AppNavigation.navigateTo(
        context: context,
        routeName: Routes.adminOtp,
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
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: AppColor.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    const BackIcon(),
                    SizedBox(
                      height: 20.h,
                    ),
                    TitleSection(
                      title: S.of(context).forgotPassword,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      S.of(context).pleaseEnterYourPhoneNumber,
                      style: AppTextStyle.gray500S13,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomTextFormField(
                      hint: S.of(context).phoneNumber,
                      isLast: true,
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
                    const Spacer(),
                    CustomButton(
                      width: double.infinity,
                      title: S.of(context).send,
                      onPressed: () {
                        _validateAndNavigate(
                          context,
                          formKey,
                          context.read<ValidationCubit>(),
                        );
                      },
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
