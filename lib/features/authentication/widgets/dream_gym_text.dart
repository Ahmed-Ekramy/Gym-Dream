import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class DreamGymText extends StatelessWidget {
  const DreamGymText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${S.of(context).dream} ',
            style: AppTextStyle.black600S48,
          ),
          Text(
            S.of(context).gym,
            style: AppTextStyle.orange600S48,
          ),
        ],
      ),
    );
  }
}
