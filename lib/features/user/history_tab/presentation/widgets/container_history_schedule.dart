import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/user/history_tab/presentation/widgets/row_history_schedule.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';

class ContainerHistorySchedule extends StatelessWidget {
  const ContainerHistorySchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              horizontal: 5.0.w,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text(
                  //   S.of(context).package,
                  //   style: AppTextStyle.blueNavy500S14,
                  // ),
                  RowHistorySchedule(
                    title: S.of(context).date,
                    imageName: AppAsset.arrowIcon,
                  ),
                  RowHistorySchedule(
                    title: S.of(context).In,
                    imageName: AppAsset.loginIcon,
                  ),
                  RowHistorySchedule(
                    title: S.of(context).out,
                    imageName: AppAsset.logoutIcon,
                  ),
                ])));
  }
}
