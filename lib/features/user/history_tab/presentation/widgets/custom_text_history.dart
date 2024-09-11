import 'package:flutter/cupertino.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';

class CustomTextHistory extends StatelessWidget {
  const CustomTextHistory({
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
            ]
        )
    );
  }
}