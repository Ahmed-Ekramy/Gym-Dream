import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/widgets/last_session_item.dart';
import 'package:gym_dream/generated/l10n.dart';

class UserHistoryAndLastSession extends StatelessWidget {
  const UserHistoryAndLastSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).history,
          style: AppTextStyle.orange600S18,
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            Text(
              S.of(context).lastSession,
              style: AppTextStyle.gray400S14.copyWith(fontSize: 10.sp),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.specificUserHistor);
              },
              child: Text(
                S.of(context).seeMore,
                style: AppTextStyle.blue600S14,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        const LastSessionItem(
          date: '1/3/2024',
          timeIn: '10:00',
          timeOut: '11:00',
        ),
        SizedBox(height: 8.h),
        const LastSessionItem(
          date: '1/3/2024',
          timeIn: '10:00',
          timeOut: '11:00',
        ),
        SizedBox(height: 8.h),
        const LastSessionItem(
          date: '1/3/2024',
          timeIn: '10:00',
          timeOut: '11:00',
        ),
        SizedBox(height: 8.h),
        const LastSessionItem(
          date: '1/3/2024',
          timeIn: '10:00',
          timeOut: '11:00',
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}
