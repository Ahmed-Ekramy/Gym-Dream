import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';
import '../manager/home_user_cubit.dart';
import '../manager/home_user_state.dart';
import '../widgets/bottomNav.dart';
import '../widgets/custom_flixibleBar.dart';
import '../widgets/custom_row_capacity.dart';

class UserHomeLayoutView extends StatelessWidget {
  const UserHomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeUserCubit, HomeUserState>(
      builder: (context, state) {
        final cubit = HomeUserCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollUpdateNotification) {
                  if (scrollNotification.scrollDelta! > 0) {
                    cubit.hideAppBarAndBottomNav();
                  } else if (scrollNotification.scrollDelta! < 0) {
                    cubit.showAppBarAndBottomNav();
                  }
                }
                return true;
              },
              child: Column(
                children: [
                  AnimatedContainer(
                    width:  double.infinity,
                    duration: const Duration(milliseconds: 300),
                    height: cubit.isAppBarVisible ? 90.h : 0.0,
                    child: AppBar(
                      toolbarHeight: 90.h,
                      backgroundColor: AppColor.orangeLight,
                shape:  const RoundedRectangleBorder(
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
                          maxLines: 2,
                          '12 sessions completed, 8 sessions remaining',
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
                          color: AppColor.secondary,
                          AppAsset.bell,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: cubit.tabs[cubit.currentIndex],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: const BottomNavBarUser(),
          ),
        );
      },
    );
  }
}


