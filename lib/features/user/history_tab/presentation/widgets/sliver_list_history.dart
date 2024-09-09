import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class SliverListHistory extends StatelessWidget {
  const SliverListHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 40,
      itemBuilder: (context, index) {
        return Padding(
          padding:
          EdgeInsets.only(left: 8.0.w, right: 8.0.w, bottom: 8.0.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Platinum",
                    style:
                    AppTextStyle.blueNavy400S12),
                Text("2/3/2024",
                    style:
                    AppTextStyle.blueNavy400S12),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 3.r,
                      backgroundColor: AppColor.blue,
                    ),
                    SizedBox(width: 4.w),
                    Text("in 10:30",
                        style: AppTextStyle.blueNavy400S12
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 3.r,
                      backgroundColor: AppColor.red,
                    ),
                    SizedBox(width: 4.w),
                    Text("out 12:30",
                        style:
                        AppTextStyle.blueNavy400S12

                    ),
                  ],
                ),
              ]),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return      Divider(
          color: AppColor.grey,
          thickness: 1.h,
        );
      },
    );
  }
}
