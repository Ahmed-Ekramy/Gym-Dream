import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/common/widgets/custom_text_form_field.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/auth/widgets/back_icon.dart';
import 'package:gym_dream/features/user/auth/cubits/password_visibility_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                height: 50.h,
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
              CustomTextFormField(
                hint: S.of(context).phoneNumber,
                isLast: true,
                title: '',
                inputType: InputType.phoneNumber,
              ),
              const Spacer(),
              CustomButton(
                width: double.infinity,
                title: S.of(context).send,
                onPressed: () {
                  context.navigateTo(routeName: Routes.adminOtp);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
