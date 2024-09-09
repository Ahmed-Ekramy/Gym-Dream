import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';

class CardIconBottom extends StatelessWidget {
  const CardIconBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigation.navigateTo(
            context: context, routeName: Routes.userNotification);
      },
      child: Container(
        width: 40.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: const Color(0xffF7F7F7),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Center(
          child: Badge(
            backgroundColor: AppColor.primary,
            label: const Text('6'),
            child: SvgPicture.asset(
              AppAsset.bell,
            ),
          ),
        ),
      ),
    );
  }
}
