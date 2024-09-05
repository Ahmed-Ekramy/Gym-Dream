import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/personal_info_package_item.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ahmed Ekramy Fahmy',
          style: AppTextStyle.black600S24.copyWith(fontSize: 22.sp),
        ),
        SizedBox(height: 8.h),
        Text(
          'ID : 101230',
          style: AppTextStyle.brown600S18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Platinum Package',
              style: AppTextStyle.blackOpacity400S14,
            ),
            SizedBox(width: 8.w),
            Image.asset(
              AppAsset.platinum,
              width: 20.w,
              height: 20.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PersonalInfoPackageItem(
              date: 'Start Date: 1/3/2024',
            ),
            PersonalInfoPackageItem(
              date: 'End Date: 1/4/2024',
            ),
          ],
        )
      ],
    );
  }
}
