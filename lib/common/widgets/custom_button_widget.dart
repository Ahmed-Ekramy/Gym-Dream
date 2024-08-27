import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.width,
      this.textStyle,
      required this.title,
      required this.onPressed,
      this.color = AppColor.primary,
      this.textColor = const Color(0xffF6F6F9),
      this.heightt = 55});
  final void Function() onPressed;
  final String title;
  final Color? textColor;
  final Color? color;
  final double? heightt, width;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightt!.h,
      width: width,
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
          style: textStyle,
        ),
      ),
    );
  }
}
