import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app_text_style.dart';

class RowHistorySchedule extends StatelessWidget {
  const RowHistorySchedule({
    required this.title,
    required this.imageName,
    super.key,
  });
  final String title ;
  final String imageName ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.blueNavy500S14,
        ),
        SizedBox(
          width: 6.w,
        ),
        SvgPicture.asset(
          imageName,
          width: 16.w,
          height: 16.h,
        ),
      ],
    );
  }
}