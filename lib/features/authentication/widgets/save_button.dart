import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_cubit.dart';
import 'package:gym_dream/features/authentication/manager/create%20password%20cubit/create_password_state.dart';
import 'package:gym_dream/generated/l10n.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.route});
  final String route;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatePasswordCubit, CreatePasswordState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsetsDirectional.only(
            start: 16.0.w,
            end: 16.w,
            bottom: 16.h,
          ),
          child: CustomButton(
            width: double.infinity,
            title: S.of(context).save,
            onPressed: () {
              if (context.read<CreatePasswordCubit>().submitForm()) {
                AppNavigation.navigateAndRemoveUntil(
                  context: context,
                  newRoute: route,
                );
              }
            },
          ),
        );
      },
    );
  }
}
