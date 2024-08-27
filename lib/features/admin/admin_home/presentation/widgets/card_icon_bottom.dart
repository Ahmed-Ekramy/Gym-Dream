import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';

class CardIconBottom extends StatelessWidget {
  const CardIconBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 35.h,
      decoration: BoxDecoration(
        color: const Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: const Center(
        child: Badge(
          backgroundColor: AppColor.primary,
          label: Text('6'),
          child: Icon(
            Icons.notifications,
            color: AppColor.black,
          ),
        ),
      ),
    );
  }
}
