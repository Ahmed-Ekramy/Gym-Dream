import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/custom_button_widget.dart';
import '../../../../../core/app_text_style.dart';

class WarningCard extends StatelessWidget {
  const WarningCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Card(
          elevation: 3,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("warning", style: AppTextStyle.redBlood500S14),
                    CustomButton(
                      width: 130.w,
                      height: 30.h,
                      title: "Our branches",
                      textStyle: AppTextStyle.white700S14
                          .copyWith(fontSize: 10.sp),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Text("The gym is now full, you can go to other addresses",
                    style:
                    AppTextStyle.black400S15.copyWith(fontSize: 12.sp)),
              ],
            ),
          ),
        ));
  }
}