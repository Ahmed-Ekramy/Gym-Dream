import 'package:flutter/material.dart';
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
      // Admin(),
      // StoreViewBody(),
      // HomeBody(),
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
        BottomNavigationBarItem(
          label: 'Favorite',
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.user),
          label: 'Profile',
        ),
      ];
}
