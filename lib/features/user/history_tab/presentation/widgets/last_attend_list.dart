import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_text_style.dart';

class LastAttendList extends StatelessWidget {
  const LastAttendList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      addAutomaticKeepAlives: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 8.0.w,
            right: 8.0.w,
            bottom: 8.0.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2/3/2024",
                style: index == 0
                    ? AppTextStyle.blackOpacity500S12.copyWith(
                        fontSize: 14.sp,
                      )
                    : AppTextStyle.blackOpacity500S12,
              ),
              Text("${S.of(context).In} 10:30",
                  style: index == 0
                      ? AppTextStyle.blueNavy500S14.copyWith(
                          fontSize: 14.sp,
                        )
                      : AppTextStyle.blueNavy600S12),
              Text(
                "${S.of(context).out} 12:30",
                style: index == 0
                    ? AppTextStyle.blueNavy500S14.copyWith(
                        fontSize: 14.sp,
                      )
                    : AppTextStyle.blueNavy600S12,
              ),
            ],
          ),
        );
      },
    );
  }
}
