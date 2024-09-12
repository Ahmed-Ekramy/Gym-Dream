import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.title,
    required this.image,
    this.titlestyle,
    this.onTap,
  });
  final String title;
  final String image;
  final TextStyle? titlestyle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              title,
              style: titlestyle ??
                  AppTextStyle.black400S22.copyWith(fontSize: 26.sp),
            ),
            const Spacer(),
            SvgPicture.asset(image)
          ],
        ),
      ),
    );
  }
}
