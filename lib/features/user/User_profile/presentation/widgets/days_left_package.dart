import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import '../../../../admin/trusted_user/presentation/widgets/days_left_item.dart';

class DaysLeftPackage extends StatelessWidget {
  const DaysLeftPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
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
    );
  }
}