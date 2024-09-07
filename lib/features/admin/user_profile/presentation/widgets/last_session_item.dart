import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';

class LastSessionItem extends StatelessWidget {
  const LastSessionItem({
    super.key,
    required this.date,
    required this.timeIn,
    required this.timeOut,
  });
  final String date;
  final String timeIn;
  final String timeOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          date,
          style: AppTextStyle.gray600S14,
        ),
        Text(
          'in $timeIn',
          style: AppTextStyle.black600S16.copyWith(fontSize: 14.sp),
        ),
        Text(
          'out $timeOut',
          style: AppTextStyle.black600S16.copyWith(fontSize: 14.sp),
        ),
      ],
    );
  }
}
