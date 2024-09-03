import 'package:flutter/material.dart';
import 'package:gym_dream/core/app_text_style.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.black700S22,
    );
  }
}
