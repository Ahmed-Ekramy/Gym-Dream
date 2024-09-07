import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class CustomAppBarHistory extends StatelessWidget {
  const CustomAppBarHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 90.h,
      backgroundColor: AppColor.orangeLight,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              // AppNavigation.navigateTo(
              //     context: context, routeName: '/userProfile');
            },
            child: CircleAvatar(
              radius: 30.r,
              backgroundImage: const AssetImage(
                AppAsset.boy,
              ),
            ),
          ),
          SizedBox(width: 5.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ahmed Ekramy Fahmy', style: AppTextStyle.black600S16),
              Text(' ID: 101020', style: AppTextStyle.blackOpacity600S14),
            ],
          ),
        ],
      ),
    );
  }
}
