import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class HistoryAndGymAttendanceText extends StatelessWidget {
  const HistoryAndGymAttendanceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "${S.of(context).history}\n",
            style: AppTextStyle.black600S18,
          ),
          TextSpan(
            text: S.of(context).yourGymAttendanceDate,
            style: AppTextStyle.gray600S14,
          ),
        ],
      ),
    );
  }
}
