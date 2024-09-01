import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';

class ChoosingCubit extends Cubit<String> {
  ChoosingCubit() : super('');

  void selectCustomerKind(String kind) {
    emit(kind);
  }

  void navigateToSelectedPage(BuildContext context) {
    if (state == 'trainee') {
      AppNavigation.navigateTo(
          context: context, routeName: Routes.traineeLogin);
    } else if (state == 'admin') {
      AppNavigation.navigateTo(context: context, routeName: Routes.adminLogin);
    }
  }
}
