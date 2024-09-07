import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_text_style.dart';

class CustomTextRich extends StatelessWidget {
  const CustomTextRich({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:  EdgeInsets.symmetric( horizontal: 8.0.h),
        child: Text.rich(TextSpan(
          children: [
            TextSpan(text: "History\n", style: AppTextStyle.black600S18),
            TextSpan(
                text: "Your gym attendance date",
                style: AppTextStyle.gray600S14),
          ],
        )),
      ),
    );
  }
}