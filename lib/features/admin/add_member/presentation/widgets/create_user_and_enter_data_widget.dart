import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';

class CreateUserAndEnterDataWidget extends StatelessWidget {
  const CreateUserAndEnterDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Create a new User',
          style: AppTextStyle.black700S20,
        ),
        SizedBox(height: 8.h),
        Text(
          'Enter the required data below',
          style: AppTextStyle.blackOpacity400S11.copyWith(fontSize: 13.sp),
        ),
      ],
    );
  }
}
