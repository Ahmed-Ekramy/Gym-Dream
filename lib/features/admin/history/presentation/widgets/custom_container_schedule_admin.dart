import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class CustomContainerScheduleAdmin extends StatelessWidget {
  const CustomContainerScheduleAdmin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric( horizontal: 8.0.h),
        child: Container(
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
                      Text("ID", style: AppTextStyle.blueNavy500S14),
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
                    ]))),
      ),
    );
  }
}