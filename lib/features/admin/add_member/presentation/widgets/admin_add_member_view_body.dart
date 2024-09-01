import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class AdminAddMemberViewBody extends StatelessWidget {
  const AdminAddMemberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            SvgPicture.asset(
              AppAsset.arrowCircleRight,
              height: 30.h,
            ),
            SizedBox(height: 8.h),
            Text(
              'Create a new User',
              style: AppTextStyle.black700S20,
            ),
            SizedBox(height: 8.h),
            Text(
              'Enter the required data below',
              style: AppTextStyle.blackOpacity400S11.copyWith(fontSize: 13.sp),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Photo',
                      style: AppTextStyle.black500S16,
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: AppColor.blackOpacity4.withOpacity(0.3),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Upload Photo',
                            style: AppTextStyle.blackOpacity400S14,
                          ),
                          SizedBox(width: 8.w),
                          SvgPicture.asset(
                            AppAsset.camera,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                        color: AppColor.blackOpacity4.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(
                          8.r,
                        )),
                  ),
                )
              ],
            )

            // const AdminAddMemberViewBodyForm(),
          ],
        ),
      ),
    );
  }
}
