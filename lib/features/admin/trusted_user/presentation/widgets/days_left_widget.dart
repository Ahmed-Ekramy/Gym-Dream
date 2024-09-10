import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/days_left_item.dart';
import 'package:gym_dream/generated/l10n.dart';

class DaysLeftWidget extends StatelessWidget {
  const DaysLeftWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            S.of(context).daysLeftForYourPackage,
            style: AppTextStyle.black700S18,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            Expanded(
              child: DaysLeftItem(
                value: '30',
                time: S.of(context).days,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: DaysLeftItem(
                value: '10',
                time: S.of(context).hours,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: DaysLeftItem(
                value: '32',
                time: S.of(context).minutes,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: DaysLeftItem(
                value: '23',
                time: S.of(context).seconds,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
