import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';
import 'notification_row_padge.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
              color: AppColor.grayLight,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            padding: EdgeInsets.all(5.sp),
            height: 130.h,
            child: Column(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const NotificationRowBadge(),
                  SizedBox(height: 20.h),
                  Text(
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    S.of(context).helloWeRemindYouToChangeYourPassword,
                    style: AppTextStyle.black400S15,
                  ),
                ],
              )
            ]));
      },
    );
  }
}
