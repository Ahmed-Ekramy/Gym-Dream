import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class CustomRowCapacity extends StatelessWidget {
  const CustomRowCapacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.r),
                bottomLeft: Radius.circular(4.r),
              ),
            ),
            height: 14.h,
            child: Center(
              child: Text(
                S.of(context).lowCapacity,
                style: AppTextStyle.white500S7,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: const BoxDecoration(
              color: AppColor.yellowLight,
            ),
            height: 14.h,
            child: Center(
              child: Text(
                S.of(context).mediumCapacity,
                style: AppTextStyle.blackOpacity500S7,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.redLight,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4.r),
                bottomRight: Radius.circular(4.r),
              ),
            ),
            height: 14.h,
            child: Center(
              child: Text(
                S.of(context).highCapacity,
                style: AppTextStyle.blackOpacity500S7,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
