import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class InstructionsSection extends StatelessWidget {
  const InstructionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).instructions,
          style: AppTextStyle.black600S16,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).useDifferentTypesOfCharacters,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).uppercaseLettersAZ,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).owerCaseLettersAz,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).numbers09,
          style: AppTextStyle.gray400S14,
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).specialSymbolsSuchAs,
          style: AppTextStyle.gray400S14,
        ),
      ],
    );
  }
}
