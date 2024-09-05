import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_text_style.dart';

class TrustedOrNotTrustedUserHeader extends StatelessWidget {
  const TrustedOrNotTrustedUserHeader({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          icon,
          height: 30,
        ),
        SizedBox(width: 8.w),
        Text(
          title,
          style: AppTextStyle.black500S22,
        )
      ],
    );
  }
}
