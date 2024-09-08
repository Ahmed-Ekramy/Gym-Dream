import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class DaysLeftItem extends StatelessWidget {
  const DaysLeftItem({
    super.key,
    required this.value,
    required this.time,
  });
  final String time;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          height: 60.h,
          decoration: BoxDecoration(
            color: AppColor.primaryLight,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Center(
            child: FittedBox(
              child: Text(
                value,
                style: AppTextStyle.black700S18.copyWith(fontSize: 16.sp),
              ),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          time,
          style: AppTextStyle.black400S14,
        ),
      ],
    );
  }
}
