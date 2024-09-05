import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class SubtitleSection extends StatelessWidget {
  const SubtitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).enterYourNewPassword,
      style: AppTextStyle.gray500S14,
    );
  }
}
