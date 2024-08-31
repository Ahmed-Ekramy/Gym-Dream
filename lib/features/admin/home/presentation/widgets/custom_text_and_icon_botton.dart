import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class BottomTextAndIconButton extends StatelessWidget {
  const BottomTextAndIconButton(
      {super.key,
      required this.title,
      this.icon,
      this.textStyle,
      this.backGroundcolor,
      this.heigh,
      this.width,
      this.onTap});
  final String title;
  final Widget? icon;
  final TextStyle? textStyle;
  final double? heigh;
  final double? width;
  final Color? backGroundcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: heigh ?? 40.h,
          width: width ?? 80.h,
          decoration: BoxDecoration(
            color: backGroundcolor ?? AppColor.primary,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox(),
              SizedBox(width: 5.w),
              Text(
                title,
                style: textStyle ?? AppTextStyle.white700S14,
              ),
            ],
          )),
    );
  }
}
