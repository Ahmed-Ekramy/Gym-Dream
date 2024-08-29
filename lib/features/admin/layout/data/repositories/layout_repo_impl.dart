import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/admin_home/presentation/pages/admin_home_view.dart';
import 'package:gym_dream/features/admin/layout/data/models/change_index_params.dart';
import 'package:gym_dream/features/admin/layout/data/repositories/layout_repo.dart';
import 'package:gym_dream/features/admin/layout/presentation/manager/cubit/layout_cubit.dart';
import 'package:iconsax/iconsax.dart';

class LayoutRepoImpl extends LayOutRepo {
  LayoutRepoImpl();
  @override
  void changeBottomNavIndex({required ChangeIndexParams changeIndexParams}) {
    LayoutCubit.getObject(changeIndexParams.context).currentIndex =
        changeIndexParams.index!;
  }

  @override
  void changeBottomNavToHome({required ChangeIndexParams changeIndexParams}) {
    LayoutCubit.getObject(changeIndexParams.context).currentIndex = 2;
  }

  @override
  List<Widget> getBody() {
    return const <Widget>[
      AdminHomeView(),
      AdminHomeView(),
      AdminHomeView(),
    ];
  }

  @override
  List<BottomNavigationBarItem> getBottomNavItems() =>
      const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explor',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.shop),
          label: 'store',
        ),
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Iconsax.home),
        ),
      ];
}
