import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/manager/otp%20cubit/validation_cubit.dart';

class SaveAddingExercisesButton extends StatelessWidget {
  final GlobalKey<FormState> formKey; // Accept formKey as a parameter

  const SaveAddingExercisesButton({
    super.key,
    required this.formKey, // Initialize formKey
  });

  void _validateAndNavigate(BuildContext context, GlobalKey<FormState> formKey,
      ValidationCubit validationCubit) {
    if (formKey.currentState?.validate() ?? false) {
      // Validate form
      AppNavigation.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _validateAndNavigate(
          context,
          formKey,
          context.read<ValidationCubit>(),
        );
      },
      child: Container(
        height: 25.h,
        width: 75.w,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            'save',
            style: AppTextStyle.white700S14,
          ),
        ),
      ),
    );
  }
}
