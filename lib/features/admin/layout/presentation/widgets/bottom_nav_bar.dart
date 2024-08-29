import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/admin/layout/presentation/manager/cubit/layout_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        LayoutCubit cubit = LayoutCubit.getObject(context);

        return BottomNavigationBar(
          currentIndex: cubit.currentIndex,
          onTap: (index) => cubit.changeBottomNavIndex(index, context),
          items: cubit.getBottomNavItems(),
          selectedItemColor: AppColor.primary,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        );
      },
    );
  }
}
