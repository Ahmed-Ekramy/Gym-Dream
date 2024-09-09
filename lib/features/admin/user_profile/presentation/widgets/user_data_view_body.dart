import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/widgets/custom_arrow_back.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/days_left_widget.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/personal_info_package_item.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/widgets/user_history_and_last_session.dart';

class UserDataViewBody extends StatelessWidget {
  const UserDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomArrowBack(),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmed Ekramy Fahmy',
                          style: AppTextStyle.black600S16,
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          'ID : 101230',
                          style: AppTextStyle.brown600S18,
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            SvgPicture.asset(AppAsset.whatsapp),
                            Text(
                              ':01023126037',
                              style: AppTextStyle.gray600S14,
                            )
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Text(
                              'Platinum Package',
                              style: AppTextStyle.gray600S14,
                            ),
                            SizedBox(width: 4.w),
                            Image.asset(
                              AppAsset.platinum,
                              width: 20.w,
                              height: 20.h,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50.r,
                          backgroundImage: const AssetImage(AppAsset.boy),
                        ),
                        SizedBox(height: 2.h),
                        FittedBox(
                          child: Text(
                            'Birth date : 10/3/2002',
                            style: AppTextStyle.black400S14
                                .copyWith(fontSize: 9.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
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
              ),
              SizedBox(height: 20.h),
              const DaysLeftWidget(),
              SizedBox(height: 20.h),
              const UserHistoryAndLastSession(),
              SizedBox(height: 20.h),
              CustomButton(
                width: double.infinity,
                height: 35.h,
                title: 'Done',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
