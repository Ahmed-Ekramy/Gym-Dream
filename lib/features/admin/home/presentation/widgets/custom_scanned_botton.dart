import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class BottomScanButton extends StatelessWidget {
  const BottomScanButton(
      {super.key,
      required this.title,
      this.icon,
      this.textStyle,
      this.backGroundcolor});
  final String title;
  final Widget? icon;
  final TextStyle? textStyle;
  final Color? backGroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.h,
        decoration: BoxDecoration(
          color: backGroundcolor ?? AppColor.primary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            SizedBox(width: 8.w),
            Text(title, style: textStyle ?? AppTextStyle.white700S14),
          ],
        ) // Icon
        );
  }
}
