import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_color.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigation.navigateTo(
            context: context, routeName: Routes.adminSearchView);
      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
          decoration: BoxDecoration(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: const Icon(
            Icons.search,
            color: AppColor.white,
            size: 16,
          )),
    );
  }
}
