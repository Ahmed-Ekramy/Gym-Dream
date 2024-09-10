import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/admin/exercise/presentation/pages/admin_exercise_view.dart';
import 'package:gym_dream/features/admin/history/presentation/pages/admin_history_view.dart';
import 'package:gym_dream/features/admin/home/presentation/pages/admin_home_view.dart';
import 'package:gym_dream/features/admin/layout/data/models/change_index_params.dart';
import 'package:gym_dream/features/admin/layout/data/repositories/layout_repo.dart';
import 'package:gym_dream/features/admin/layout/presentation/manager/cubit/layout_cubit.dart';
import 'package:gym_dream/features/admin/setting/presentation/view/admin_setting_view.dart';
import 'package:gym_dream/generated/l10n.dart';

class LayoutRepoImpl extends LayOutRepo {
  LayoutRepoImpl();
  @override
  void changeBottomNavIndex({required ChangeIndexParams changeIndexParams}) {
    LayoutCubit.getObject(changeIndexParams.context).currentIndex =
        changeIndexParams.index!;
  }

  @override
  void changeBottomNavToHome({required ChangeIndexParams changeIndexParams}) {
    LayoutCubit.getObject(changeIndexParams.context).currentIndex = 0;
  }

  @override
  List<Widget> getBody() {
    return const <Widget>[
      AdminHomeView(),
      AdminHistoryView(),
      AdminExerciseView(),
      AdminSettingView(),
    ];
  }

  @override
  List<BottomNavigationBarItem> getBottomNavItems(BuildContext context) =>
      <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: S.of(context).home,
          icon: SvgPicture.asset(
            AppAsset.home,
            width: 24.w,
            height: 24.h,
            colorFilter: ColorFilter.mode(
              BlocProvider.of<LayoutCubit>(context).currentIndex == 0
                  ? AppColor.primary
                  : AppColor.grey,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAsset.history,
            width: 24.w,
            height: 24.h,
            colorFilter: ColorFilter.mode(
              BlocProvider.of<LayoutCubit>(context).currentIndex == 1
                  ? AppColor.primary
                  : AppColor.grey,
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
              BlocProvider.of<LayoutCubit>(context).currentIndex == 2
                  ? AppColor.primary
                  : AppColor.grey,
              BlendMode.srcIn,
            ),
          ),
          label: S.of(context).exercises,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAsset.setting,
            width: 24.w,
            height: 24.h,
            colorFilter: ColorFilter.mode(
              BlocProvider.of<LayoutCubit>(context).currentIndex == 3
                  ? AppColor.primary
                  : AppColor.grey,
              BlendMode.srcIn,
            ),
          ),
          label: S.of(context).settings,
        ),
      ];
}
