import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class CreateUserAndEnterDataWidget extends StatelessWidget {
  const CreateUserAndEnterDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).createNewUser,
          style: AppTextStyle.black700S20,
        ),
        SizedBox(height: 8.h),
        Text(
          S.of(context).enterTheRequiredDataBelow,
          style: AppTextStyle.blackOpacity400S11.copyWith(fontSize: 13.sp),
        ),
      ],
    );
  }
}
