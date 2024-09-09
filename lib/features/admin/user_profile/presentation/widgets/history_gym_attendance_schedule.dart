import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class HistoryGymAttendanceSchedule extends StatelessWidget {
  const HistoryGymAttendanceSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 25.h,
      decoration: BoxDecoration(
          color: AppColor.grayLightOpacity40,
          borderRadius: BorderRadius.all(Radius.circular(5.r))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Date", style: AppTextStyle.blueNavy500S14),
                SizedBox(width: 6.w),
                SvgPicture.asset(
                  AppAsset.arrowIcon,
                  width: 16.w,
                  height: 16.h,
                ),
              ],
            ),
            Row(
              children: [
                Text("In", style: AppTextStyle.blueNavy500S14),
                SizedBox(width: 6.w),
                SvgPicture.asset(
                  AppAsset.loginIcon,
                  width: 16.w,
                  height: 16.h,
                ),
              ],
            ),
            Row(
              children: [
                Text("Out", style: AppTextStyle.blueNavy500S14),
                SizedBox(width: 6.w),
                SvgPicture.asset(
                  AppAsset.logoutIcon,
                  width: 16.w,
                  height: 16.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
