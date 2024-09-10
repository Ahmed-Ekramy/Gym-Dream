import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class ContainerHistorySchedule extends StatelessWidget {
  const ContainerHistorySchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          width: double.infinity,
          height: 25.h,
          decoration: BoxDecoration(
            color: AppColor.grayLightOpacity40,
            borderRadius: BorderRadius.all(
              Radius.circular(5.r),
            ),
          ),
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0.w,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).package,
                      style: AppTextStyle.blueNavy500S14,
                    ),
                    Row(
                      children: [
                        Text(
                          S.of(context).date,
                          style: AppTextStyle.blueNavy500S14,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        SvgPicture.asset(
                          AppAsset.arrowIcon,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          S.of(context).In,
                          style: AppTextStyle.blueNavy500S14,
                        ),
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
                        Text(
                          S.of(context).out,
                          style: AppTextStyle.blueNavy500S14,
                        ),
                        SizedBox(width: 6.w),
                        SvgPicture.asset(
                          AppAsset.logoutIcon,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    ),
                  ]))),
    );
  }
}
