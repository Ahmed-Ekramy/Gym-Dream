import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class PersonalInfoPackageItem extends StatelessWidget {
  const PersonalInfoPackageItem({
    super.key,
    required this.date,
  });
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColor.primaryLight,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            AppAsset.calendar,
            width: 18.w,
            color: AppColor.black.withOpacity(0.5),
          ),
          SizedBox(height: 4.h),
          Text(
            S.of(context).package,
            style: AppTextStyle.blackOpacity400S14,
          ),
          SizedBox(height: 4.h),
          Text(date, style: AppTextStyle.blackOpacity500S12),
        ],
      ),
    );
  }
}
