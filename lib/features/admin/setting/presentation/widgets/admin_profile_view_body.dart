import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

import '../../../../../core/app_asset.dart';

class AdminProfileViewBody extends StatelessWidget {
  const AdminProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        const Center(
          child: AdminProfileImage(),
        ),
        SizedBox(height: 40.h),
        Text(
          'Ahmed Ekramy Fahmy',
          style: AppTextStyle.black600S18,
        ),
        SizedBox(height: 8.h),
        Text(
          'ID : 101230',
          style: AppTextStyle.brown600S18,
        ),
        SizedBox(height: 16.h),
        Text(
          'WhatsApp Number: 01123456789',
          style: AppTextStyle.black400S15,
        ),
        SizedBox(height: 16.h),
        Text(
          'Birth date : 10/3/2002',
          style: AppTextStyle.black400S15,
        ),
      ],
    );
  }
}

class AdminProfileImage extends StatelessWidget {
  const AdminProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 80.r,
          backgroundImage: const AssetImage(AppAsset.boy),
        ),
        Positioned(
            bottom: -20,
            right: 0,
            left: 0,
            child: GestureDetector(
              onTap: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.editProfileView);
              },
              child: CircleAvatar(
                radius: 26.r,
                backgroundColor: AppColor.primary,
                child: CircleAvatar(
                  radius: 25.r,
                  backgroundColor: const Color(0xffF6F5F5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 8.h),
                      Text(
                        'Edit Profile',
                        style:
                            AppTextStyle.black400S14.copyWith(fontSize: 7.sp),
                      ),
                      SizedBox(height: 3.h),
                      SvgPicture.asset(
                        AppAsset.edit,
                        width: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
