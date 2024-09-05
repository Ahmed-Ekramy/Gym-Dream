import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../common/helper/naviagtion_extentaions.dart';
import '../../../../../common/routes/route.dart';
import '../../../../../common/widgets/custom_button_widget.dart';
import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';
import '../../../user_home/presentation/widgets/custom_row_capacity.dart';

class OurBranchesView extends StatelessWidget {
  const OurBranchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 90.h,
            backgroundColor: AppColor.orangeLight,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: const AssetImage(
                    AppAsset.boy,
                  ),
                ),
                SizedBox(width: 5.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: 123456', style: AppTextStyle.black600S16),
                    SizedBox(height: 10.h),
                    Text(
                      '12 sessions completed, 8 sessions remaining',
                      maxLines: 2,
                      style: AppTextStyle.blackOpacity600S14.copyWith(
                        fontSize: 8.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const CustomRowCapacity(),
                  ],
                ),
              ],
            ),
            actions: [
              SvgPicture.asset(
                AppAsset.bell,
                width: 24.w,
                height: 24.h,
              ),
            ],
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Our branches', style: AppTextStyle.black600S18),
                SizedBox(height: 2.h),
                Text('All our gym branches', style: AppTextStyle.gray600S14)
              ],
            ),
          )),
          SliverList.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),

                    child: Stack(
                      children: [
                        Image.asset(
                          fit: BoxFit.fill,
                          AppAsset.backgroundBranch,
                          width: double.infinity,
                          height: 90.h,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ahmed Maher Street",
                                    style: AppTextStyle.white600S18,
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    "Ahmed Maher Street",
                                    style: AppTextStyle.gray600S14,
                                  ),
                                  SizedBox(height: 20.h),
                                  const CustomRowCapacity(),
                                ],
                              ),
                              CustomButton(
                                width: 86.w,
                                height: 25.h,
                                title: "location",
                                textStyle:
                                AppTextStyle.white700S14.copyWith(fontSize: 10.sp),
                                onPressed: () {
                                  AppNavigation.navigateTo(
                                      context: context,
                                      routeName: Routes.ourBranchesView);
                                },
                              )
                            ],
                          ),
                        )
                      ],

                    ),
                  );
              }),
        ],
      )),
    );
  }
}
