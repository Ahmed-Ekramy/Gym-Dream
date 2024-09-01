import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class CustomRowCapacity extends StatelessWidget {
  const CustomRowCapacity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColor.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4.r),
              bottomLeft: Radius.circular(4.r),
            ),
          ),
          width: 64.w,
          height: 14.h,
          child: Center(
            child: Text(
              'Low Capacity',
              style: AppTextStyle.white500S7,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: AppColor.yellowLight,
          ),
          width: 64.w,
          height: 14.h,
          child: Center(
            child: Text(
              'Medium Capacity',
              style: AppTextStyle.blackOpacity500S7,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColor.redLight,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4.r),
              bottomRight: Radius.circular(4.r),
            ),
          ),
          width: 64.w,
          height: 14.h,
          child: Center(
            child: Text(
              'High Capacity',
              style: AppTextStyle.blackOpacity500S7,
            ),
          ),
        ),
      ],
    );
  }
}
