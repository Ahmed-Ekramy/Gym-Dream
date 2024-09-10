import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../common/helper/naviagtion_extentaions.dart';
import '../../../../../common/routes/route.dart';
import '../../../../../common/widgets/custom_button_widget.dart';
import '../../../../../core/app_text_style.dart';

class WarningCard extends StatelessWidget {
  const WarningCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Card(
          elevation: 3,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).warning,
                      style: AppTextStyle.redBlood700S18,
                    ),
                    CustomButton(
                      width: 130.w,
                      height: 25.h,
                      title: S.of(context).ourBranches,
                      textStyle: AppTextStyle.white700S14.copyWith(
                        fontSize: 12.sp,
                      ),
                      onPressed: () {
                        AppNavigation.navigateTo(
                          context: context,
                          routeName: Routes.ourBranchesView,
                        );
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).theGymIsFullNowYouCanGoToAnotherAddress,
                  style: AppTextStyle.black400S15.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
