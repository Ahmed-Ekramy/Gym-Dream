import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/add_exercises_dialog_body.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/save_adding_exercises_button.dart';
import 'package:gym_dream/features/authentication/manager/otp%20cubit/validation_cubit.dart';

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
                'Add exercises',
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
    final GlobalKey<FormState> formKey =
        GlobalKey<FormState>(); // Create formKey

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return BlocProvider(
          create: (_) => ValidationCubit(),
          child: AlertDialog(
            titleTextStyle: AppTextStyle.orange700S16,
            title: const Center(
              child: Text('Add new exercise'),
            ),
            content: AddExercisesDialogBody(
                formKey: formKey), // Pass formKey to the body
            actions: <Widget>[
              SaveAddingExercisesButton(
                  formKey: formKey), // Pass the same formKey to the button
            ],
          ),
        );
      },
    );
  }
}
