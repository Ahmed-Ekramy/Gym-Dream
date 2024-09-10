import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';

class EditProfileViewBody extends StatelessWidget {
  const EditProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            const Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(AppAsset.boy),
              ),
            ),
            SizedBox(height: 40.h),
            Text('Full Name', style: AppTextStyle.black600S18),
            SizedBox(height: 4.h),
            const AppTextFormFiled(hintText: 'Full Name', obscureText: false),
            SizedBox(height: 8.h),
            Text('ID', style: AppTextStyle.black600S18),
            SizedBox(height: 4.h),
            const AppTextFormFiled(hintText: 'ID', obscureText: false),
            SizedBox(height: 8.h),
            Text('WahatApp Number', style: AppTextStyle.black600S18),
            SizedBox(height: 4.h),
            const AppTextFormFiled(
                hintText: 'WahatApp Number', obscureText: false),
            SizedBox(height: 8.h),
            Text('Birth date', style: AppTextStyle.black600S18),
            SizedBox(height: 4.h),
            const AppTextFormFiled(hintText: 'Birth date', obscureText: false),
            SizedBox(height: 40.h),
            CustomButton(
                width: double.infinity, title: 'Confirm', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
