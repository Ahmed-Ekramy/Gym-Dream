import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/otp%20cubit/otp_timer_cubit.dart';
import 'package:gym_dream/features/authentication/manager/otp%20cubit/validation_cubit.dart';
import 'package:gym_dream/features/authentication/widgets/title_section.dart';
import 'package:gym_dream/generated/l10n.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/back_icon.dart';

class OtpViewForTrainee extends StatelessWidget {
  const OtpViewForTrainee({super.key});

  void _validateAndNavigate(BuildContext context, GlobalKey<FormState> formKey,
      ValidationCubit validationCubit) {
    if (formKey.currentState?.validate() ?? false) {
      AppNavigation.navigateTo(
        context: context,
        routeName: Routes.createNewPasswordForAdmin,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => OtpCubit()),
        BlocProvider(create: (_) => ValidationCubit()),
      ],
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),
                    const BackIcon(),
                    SizedBox(height: 40.h),
                    TitleSection(
                      title: S.of(context).enterTheOtp,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      S.of(context).enterTheOtpCodeSentToYourWhatsappNumber,
                      style: AppTextStyle.gray600S12,
                    ),
                    SizedBox(height: 20.h),
                    Column(
                      children: [
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: BlocBuilder<ValidationCubit, String?>(
                            builder: (context, errorMessage) {
                              return Column(
                                children: [
                                  PinCodeTextField(
                                    keyboardType: TextInputType.number,
                                    appContext: context,
                                    length: 4,
                                    cursorHeight: 15.h,
                                    enableActiveFill: true,
                                    textStyle: AppTextStyle.black600S24,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    pinTheme: PinTheme(
                                      shape: PinCodeFieldShape.box,
                                      fieldWidth: 70.w,
                                      fieldHeight: 55.h,
                                      inactiveColor: AppColor.grey,
                                      selectedColor: AppColor.primary,
                                      activeFillColor: AppColor.grey,
                                      selectedFillColor: AppColor.white,
                                      inactiveFillColor: AppColor.white,
                                      borderWidth: 1,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    onChanged: (value) {
                                      context
                                          .read<ValidationCubit>()
                                          .clearErrorMessage();
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        context
                                            .read<ValidationCubit>()
                                            .setErrorMessage(
                                              S.of(context).enterTheOtp,
                                            );
                                        return '';
                                      }
                                      if (value.length < 4) {
                                        context
                                            .read<ValidationCubit>()
                                            .setErrorMessage(
                                              S.of(context).enterTheOtp,
                                            );
                                        return '';
                                      }
                                      context
                                          .read<ValidationCubit>()
                                          .clearErrorMessage();
                                      return null;
                                    },
                                  ),
                                  if (errorMessage != null) ...[
                                    SizedBox(height: 10.h),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        errorMessage,
                                        style: AppTextStyle.redBlood700S18,
                                      ),
                                    ),
                                  ],
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    BlocBuilder<OtpCubit, int>(
                      builder: (context, state) {
                        if (state == 0) {
                          return context.read<OtpCubit>().attempt == 3
                              ? Center(
                                  child: Text(
                                    S.of(context).tryAgainLater,
                                    style: AppTextStyle.black400S14,
                                  ),
                                )
                              : Center(
                                  child: TextButton(
                                    onPressed: () {
                                      context.read<OtpCubit>().restartTimer();
                                    },
                                    child: Text(
                                      S.of(context).sendNewOtp,
                                      style: AppTextStyle.black400S14,
                                    ),
                                  ),
                                );
                        } else {
                          final timerText = context.read<OtpCubit>().timerText;
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).theCodeWillBeResentAfter,
                                style: AppTextStyle.gray500S14,
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                timerText,
                                style: AppTextStyle.black400S14,
                              ),
                            ],
                          );
                        }
                      },
                    ),
                    const Spacer(),
                    CustomButton(
                      width: double.infinity,
                      title: S.of(context).verification,
                      onPressed: () {
                        _validateAndNavigate(
                          context,
                          formKey,
                          context.read<ValidationCubit>(),
                        );
                      },
                    ),
                    SizedBox(height: 25.h),
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
