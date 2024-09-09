import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_text_style.dart';

class CustomCardItemSetting extends StatelessWidget {
  const CustomCardItemSetting({
    super.key,
    required this.itemName,
    required this.iconItem,
    required this.onTap,
    this.textStyle,
    this.colorIcon
  });

  final String itemName;

  final IconData iconItem;

  final VoidCallback onTap;
  final TextStyle? textStyle;
  final Color? colorIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                itemName,
                style:  textStyle ?? AppTextStyle.black400S22,
              ),
              Icon(
                iconItem,
                size: 24.sp,
                color:colorIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}