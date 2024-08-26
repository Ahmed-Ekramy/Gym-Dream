import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color = AppColor.primary,
      this.textColor = const Color(0xffF6F6F9),
      this.height = 55});
  final void Function() onPressed;
  final String title;
  final Color? textColor;
  final Color? color;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 18.w),
      child: SizedBox(
        height: height!.h,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(color),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: AppTextStyle.white500S16,
          ),
        ),
      ),
    );
  }
}
