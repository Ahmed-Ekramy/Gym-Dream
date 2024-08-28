import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../manager/home_user_cubit.dart';
import '../manager/home_user_state.dart';

class UserHomeLayoutView extends StatelessWidget {
  const UserHomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeUserCubit, HomeUserState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: HomeUserCubit.get(context)
                .tabs[HomeUserCubit.get(context).currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                HomeUserCubit.get(context).changeIndex(value);
              },
              currentIndex: HomeUserCubit.get(context).currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppAsset.home,
                      width: 24.w,
                      height: 24.h,
                      colorFilter: ColorFilter.mode(
                        HomeUserCubit.get(context).currentIndex == 0
                            ? AppColor.primary
                            : AppColor.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppAsset.history,
                      width: 24.w,
                      height: 24.h,
                      colorFilter: ColorFilter.mode(
                        HomeUserCubit.get(context).currentIndex == 1
                            ? AppColor.primary
                            : AppColor.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppAsset.exercises,
                      width: 24.w,
                      height: 24.h,
                      colorFilter: ColorFilter.mode(
                        HomeUserCubit.get(context).currentIndex == 2
                            ? AppColor.primary
                            : AppColor.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: ''),
              ]),
        );
      },
    );
  }
}
