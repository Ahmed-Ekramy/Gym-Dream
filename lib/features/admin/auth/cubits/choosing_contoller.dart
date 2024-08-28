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
    if (state == 'trainer') {
      context.navigateAndReplacement(newRoute: Routes.userLogin);
    } else if (state == 'admin') {
      context.navigateAndReplacement(newRoute: Routes.adminLogin);
    }
  }
}
