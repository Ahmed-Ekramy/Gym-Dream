import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class SaveAddingExercisesButton extends StatelessWidget {
  const SaveAddingExercisesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigation.pop(context);
      },
      child: Container(
        height: 25.h,
        width: 75.w,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            'save',
            style: AppTextStyle.white700S14,
          ),
        ),
      ),
    );
  }
}
