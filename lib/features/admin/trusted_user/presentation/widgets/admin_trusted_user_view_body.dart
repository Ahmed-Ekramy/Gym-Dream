import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/days_left_widget.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/personal_information.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/trusted_or_not_trusted_user_header.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/user_image.dart';
import 'package:gym_dream/generated/l10n.dart';

class TrustedUserViewBody extends StatelessWidget {
  const TrustedUserViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              TrustedOrNotTrustedUserHeader(
                icon: AppAsset.check,
                title: S.of(context).trustedUser,
              ),
              SizedBox(height: 8.h),
              const UserImage(
                image: AppAsset.boy,
              ),
              SizedBox(height: 16.h),
              const PersonalInformation(),
              SizedBox(height: 16.h),
              const DaysLeftWidget(),
              SizedBox(height: 32.h),
              CustomButton(
                height: 35.h,
                width: double.infinity,
                title: S.of(context).done,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
