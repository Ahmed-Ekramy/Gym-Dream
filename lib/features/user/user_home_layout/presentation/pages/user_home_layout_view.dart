import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';
import '../manager/home_user_cubit.dart';
import '../manager/home_user_state.dart';
import '../widgets/custom_row_capacity.dart';

class UserHomeLayoutView extends StatelessWidget {
  const UserHomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeUserCubit, HomeUserState>(builder: (context, state) {
      final cubit = HomeUserCubit.get(context);
      return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              AppBar(
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
                    InkWell(
                      onTap: () {
                        AppNavigation.navigateTo(
                            context: context, routeName: '/userProfile');
                      },
                      child: CircleAvatar(
                        radius: 30.r,
                        backgroundImage: const AssetImage(AppAsset.boy),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${S.of(context).id}: 123456',
                              style: AppTextStyle.black600S16
                                  .copyWith(color: const Color(0xff01152D))),
                          SizedBox(height: 5.h),
                          Text(
                            '12 ${S.of(context).sessionCompleted},8 ${S.of(context).sessionRemaining}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.blackOpacity600S14.copyWith(
                              fontSize: 10.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          const CustomRowCapacity(),
                        ],
                      ),
                    ),
                  ],
                ),
                actions: [
                  InkWell(
                    onTap: () {
                      AppNavigation.navigateTo(
                          context: context, routeName: '/userNotification');
                    },
                    child: Badge(
                      backgroundColor: AppColor.primary,
                      label: const Text('6'),
                      padding: EdgeInsets.all(1.r),
                      alignment: Alignment.topCenter,
                      offset: const Offset(10, -1),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.white,
                          border: Border.all(
                            color: AppColor.orangeOpacity40,
                            width: 2.0.w,
                          ),
                        ),
                        child: SvgPicture.asset(
                          AppAsset.bell,
                          color: AppColor.secondary,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
              Expanded(
                child: cubit.tabs[cubit.currentIndex],
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColor.orangeLight,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.primary,
            unselectedItemColor: AppColor.grey,
            selectedLabelStyle:
                AppTextStyle.orange700S16.copyWith(fontSize: 10.sp),
            onTap: (value) {
              cubit.changeIndex(value);
            },
            currentIndex: cubit.currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAsset.home,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 0 ? AppColor.primary : AppColor.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: S.of(context).home,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAsset.history,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 1 ? AppColor.primary : AppColor.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: S.of(context).history,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAsset.exercises,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 2 ? AppColor.primary : AppColor.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: S.of(context).exercises,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAsset.settings,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 3 ? AppColor.primary : AppColor.grey,
                    BlendMode.srcIn,
                  ),
                ),
                label: S.of(context).settings,
              ),
            ],
          ),
        ),
      );
    });
  }
}

// class _BottomNavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final cubit = HomeUserCubit.get(context);
//
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       height: cubit.isBottomNavVisible ? 60.h : 0.0, // Adjusted height
//       child:
//     );
//   }
// }
