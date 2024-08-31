import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/days_left_item.dart';

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
            'Days left for your package',
            style: AppTextStyle.black700S18,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            const Expanded(
              child: DaysLeftItem(
                value: '30',
                time: 'Days',
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            const Expanded(
              child: DaysLeftItem(
                value: '10',
                time: 'Hours',
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            const Expanded(
              child: DaysLeftItem(
                value: '32',
                time: 'Minutes',
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            const Expanded(
              child: DaysLeftItem(
                value: '23',
                time: 'Seconds',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
