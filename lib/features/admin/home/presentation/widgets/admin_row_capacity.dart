import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class AdminRowCapacity extends StatelessWidget {
  final int capacity;

  const AdminRowCapacity({
    super.key,
    required this.capacity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: capacity >= 0 && capacity <= 50
                ? AppColor.green
                : AppColor.green.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4.r),
              bottomLeft: Radius.circular(4.r),
            ),
          ),
          width: 65.w,
          height: 15.h,
          child: Center(
            child: Text(
              'low capacity',
              style: capacity > 80 && capacity <= 1000
                  ? AppTextStyle.white500S7
                  : AppTextStyle.blackOpacity500S7,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: capacity > 50 && capacity <= 80
                ? AppColor.yellowLight
                : AppColor.yellowLight.withOpacity(0.5),
          ),
          width: 65.w,
          height: 15.h,
          child: Center(
            child: Text(
              'medium capacity',
              style: capacity > 80 && capacity <= 1000
                  ? AppTextStyle.white500S7
                  : AppTextStyle.blackOpacity500S7,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: capacity > 80 && capacity <= 1000
                ? AppColor.redLight
                : AppColor.redLight.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4.r),
              bottomRight: Radius.circular(4.r),
            ),
          ),
          width: 65.w,
          height: 15.h,
          child: Center(
            child: Text(
              'high capacity',
              style: capacity > 80 && capacity <= 1000
                  ? AppTextStyle.white500S7
                  : AppTextStyle.blackOpacity500S7,
            ),
          ),
        ),
      ],
    );
  }
}
