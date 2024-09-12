import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';

class CustomSomeDetailsFromUser extends StatelessWidget {
  const CustomSomeDetailsFromUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.25,
            vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${S.of(context).package}: ${S.of(context).platinum}',
              style: AppTextStyle.black500S14,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '${S.of(context).birthDate}: 10/3/2002',
              style: AppTextStyle.black500S14,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '${S.of(context).startDate}: 1/3/2024',
              style: AppTextStyle.black500S14,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '${S.of(context).endDate}: 1/4/2024',
              style: AppTextStyle.black500S14,
            ),
          ],
        ),
      ),
    );
  }
}