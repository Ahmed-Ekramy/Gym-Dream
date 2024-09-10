import 'package:flutter/material.dart';
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
            SizedBox(
              height: 40.h,
            ),
            Text(
              S.of(context).fullName,
              style: AppTextStyle.black600S18,
            ),
            SizedBox(
              height: 4.h,
            ),
            AppTextFormFiled(
              hintText: S.of(context).fullName,
              obscureText: false,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              S.of(context).id,
              style: AppTextStyle.black600S18,
            ),
            SizedBox(
              height: 4.h,
            ),
            AppTextFormFiled(
              hintText: S.of(context).id,
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
              hintText: S.of(context).birthDate,
              obscureText: false,
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
              width: double.infinity,
              title: S.of(context).confirm,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
