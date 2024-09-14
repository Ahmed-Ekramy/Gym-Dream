import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/validators_helper.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/admin/setting/presentation/manager/setting_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingCubit, SettingState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<SettingCubit>(context);
        return SingleChildScrollView(
          child: Form(
            key: cubit.formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  const Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(AppAsset.boy),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    S.of(context).fullName,
                    style: AppTextStyle.black600S18,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppTextFormFiled(
                    controller: cubit.fullNameController,
                    validator: (value) {
                      return MyValidatorsHelper.displayNameValidator(
                          context, value);
                    },
                    hintText: S.of(context).fullName,
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    S.of(context).whatsAppNumber,
                    style: AppTextStyle.black600S18,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppTextFormFiled(
                    keyboardType: TextInputType.phone,
                    controller: cubit.watsAppController,
                    validator: (value) {
                      return MyValidatorsHelper.phoneValidator(context, value);
                    },
                    hintText: S.of(context).whatsAppNumber,
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    S.of(context).birthDate,
                    style: AppTextStyle.black600S18,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  AppTextFormFiled(
                    readOnly: true,
                    validator: (text) {
                      return MyValidatorsHelper.birthDateValidator(
                          context, text);
                    },
                    controller: cubit.birthDateController,
                    hintText: S.of(context).startDate,
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    suffixIcon: IconButton(
                      onPressed: () {
                        // cubit.selectDate(
                        //   context,
                        //   date: cubit.startDateController,
                        //   isStartDate: true,
                        // );
                      },
                      icon: SvgPicture.asset(
                        AppAsset.calendar,
                        height: 15.h,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  CustomButton(
                    width: double.infinity,
                    title: S.of(context).confirm,
                    onPressed: () {
                      if (cubit.formKey.currentState!.validate() == true) {
                        // Call the function to add member here
                      } else {}
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        );
      },

    );
  }
}
