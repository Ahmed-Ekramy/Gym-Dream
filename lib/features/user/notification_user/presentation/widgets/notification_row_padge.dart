
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class NotificationRowBadge extends StatelessWidget {
  const NotificationRowBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Badge(
          padding: EdgeInsets.all(2.sp),
          alignment: AlignmentDirectional.bottomEnd,
          backgroundColor: AppColor.grey,
          offset: Offset(-2.w, -10.h),
          label: Image.asset(
            AppAsset.eosIcons,
            fit: BoxFit.fitWidth,
            width: 12.w,
            height: 12.h,
          ),
          child: Image.asset(
            AppAsset.gymImage,
            fit: BoxFit.fitWidth,
            width: 40.w,
            height: 40.h,
          ),
        ),
        SizedBox(width: 10.w),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: 'Dream ',
                style: AppTextStyle.black400S15),
            TextSpan(
                text: 'Gym\n',
                style: AppTextStyle.orange400S15),
            TextSpan(
              text: "14 Sep-2024 10:30 Pm",
              style: AppTextStyle.blackOpacity500S12,
            ),
          ]),
        ),
      ],
    );
  }
}