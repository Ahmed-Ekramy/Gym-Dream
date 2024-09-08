import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_text_style.dart';

class HistoryAndGymAttendanceText extends StatelessWidget {
  const HistoryAndGymAttendanceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: "History\n", style: AppTextStyle.black600S18),
          TextSpan(
              text: "Your gym attendance date", style: AppTextStyle.gray600S14),
        ],
      ),
    );
  }
}
