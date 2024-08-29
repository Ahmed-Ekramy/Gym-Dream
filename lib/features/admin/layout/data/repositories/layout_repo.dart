import 'package:flutter/material.dart';
import 'package:gym_dream/features/admin/layout/data/models/change_index_params.dart';

abstract class LayOutRepo {
  void changeBottomNavIndex({required ChangeIndexParams changeIndexParams});

  void changeBottomNavToHome({required ChangeIndexParams changeIndexParams});

  List<Widget> getBody();

  List<BottomNavigationBarItem> getBottomNavItems(BuildContext context);
}
