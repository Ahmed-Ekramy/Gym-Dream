import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/add_exercises_dialog_body.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/save_adding_exercises_button.dart';
import 'package:gym_dream/features/authentication/manager/otp%20cubit/validation_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

class AddExercisesButton extends StatelessWidget {
  const AddExercisesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        onTap: () => _dialogBuilder(context),
        child: Container(
          height: 25.h,
          width: 120.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColor.babyBlue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).addExercise,
                style: AppTextStyle.darkBlue700S10,
              ),
              Icon(
                size: 16.h,
                Icons.add,
                color: AppColor.darkBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return BlocProvider(
          create: (_) => ValidationCubit(),
          child: AlertDialog(
            titleTextStyle: AppTextStyle.orange700S16,
            title: Center(
              child: Text(
                S.of(context).addNewExercise,
              ),
            ),
            content: SizedBox(
              height: 400.h,
              width: 300.w,
              child: AddExercisesDialogBody(
                formKey: formKey,
              ),
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: Text(
                  S.of(context).disable,
                  style: AppTextStyle.orange400S10,
                ),
                onPressed: () {
                  AppNavigation.pop(context);
                },
              ),
              SaveAddingExercisesButton(formKey: formKey),
            ],
          ),
        );
      },
    );
  }
}
