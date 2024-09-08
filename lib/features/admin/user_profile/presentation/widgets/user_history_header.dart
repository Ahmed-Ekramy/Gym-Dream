import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class UserHistoryHeader extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;

  const UserHistoryHeader({
    super.key,
    this.toolbarHeight = 90.0, // Default height if not provided
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: toolbarHeight.h,
      backgroundColor: AppColor.primaryLight,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ahmed Ekramy Fahmy',
                style: AppTextStyle.black600S16,
              ),
              Text(
                'ID : 101230',
                style: AppTextStyle.gray600S12,
              ),
              Row(
                children: [
                  Text(
                    'Platinum Package',
                    style: AppTextStyle.gray600S12.copyWith(fontSize: 11.sp),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Image.asset(
                    AppAsset.platinum,
                    width: 12.w,
                    height: 12.h,
                  )
                ],
              ),
              Text(
                '12 sessions completed, 8 sessions remaining',
                style: AppTextStyle.gray600S12.copyWith(fontSize: 10.sp),
              )
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 30.r,
            backgroundImage: const AssetImage(AppAsset.boy),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight.h);
}
