import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';
import '../manager/home_user_cubit.dart';

class BottomNavBarUser extends StatefulWidget {
  const BottomNavBarUser({super.key});

  @override
  BottomNavBarUserState createState() => BottomNavBarUserState();
}

class BottomNavBarUserState extends State<BottomNavBarUser> {
  @override
  Widget build(BuildContext context) {
    final cubit = HomeUserCubit.get(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: cubit.isBottomNavVisible ? 40.h : 0.0,
      child: Wrap(
        children: [
          BottomNavigationBar(
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
            ],
          ),
        ],
      ),
    );
  }
}
