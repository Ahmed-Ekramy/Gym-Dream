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
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/generated/l10n.dart';

class ForgotPasswordForAdmin extends StatelessWidget {
  const ForgotPasswordForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordVisibilityCubit(),
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
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
              Text(
                S.of(context).forgotPassword,
                style: AppTextStyle.black700S20,
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
              ),
              const Spacer(),
              CustomButton(
                width: double.infinity,
                title: S.of(context).send,
                onPressed: () {
                  AppNavigation.navigateTo(
                      context: context, routeName: Routes.adminOtp);
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
  }
}
