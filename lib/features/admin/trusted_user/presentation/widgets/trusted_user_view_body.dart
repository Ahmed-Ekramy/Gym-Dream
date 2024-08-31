import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/days_left_widget.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/personal_information.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/trusted_or_not_trusted_user_header.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/user_image.dart';

class TrustedUserViewBody extends StatelessWidget {
  const TrustedUserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            const TrustedOrNotTrustedUserHeader(
              icon: AppAsset.check,
              title: 'Trusted User',
            ),
            SizedBox(height: 8.h),
            const UserImage(
              image: AppAsset.boy,
            ),
            SizedBox(height: 16.h),
            const PersonalInformation(),
            SizedBox(height: 16.h),
            const DaysLeftWidget()
          ],
        ),
      ),
    );
  }
}
