import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/validators_helper.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/manager/cubit/exercise_cubit.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/add_exercises_text_field.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/exercises_group_drop_down.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/upload_exercase_image.dart';
import 'package:gym_dream/generated/l10n.dart';
import 'package:image_picker/image_picker.dart';

class AddExercisesDialogBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const AddExercisesDialogBody({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();

    return BlocProvider(
      create: (context) => ExerciseCubit(),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UploadExerciseImage(
              picker: picker,
            ),
            const Spacer(),
            AddExercisesTextField(
              validator: (value) {
                return MyValidatorsHelper.displayNameValidator(context, value);
              },
              hint: S.of(context).name,
              readOnly: false,
              textInputType: TextInputType.text,
            ),
            AddExercisesTextField(
              validator: (value) {
                return MyValidatorsHelper.addExercisesValidator(context, value);
              },
              hint: S.of(context).count,
              readOnly: false,
              textInputType: TextInputType.number,
            ),
            AddExercisesTextField(
              validator: (value) {
                return MyValidatorsHelper.addExercisesValidator(context, value);
              },
              hint: S.of(context).repetition,
              readOnly: false,
              textInputType: TextInputType.number,
            ),
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: ExercisesGroupDropDown(),
            ),
            const Spacer(),
            SizedBox(
              height: 40.h,
              child: TextFormField(
                maxLines: 1,
                validator: (value) {
                  return MyValidatorsHelper.urlValidator(context, value);
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: AppColor.babyBlue,
                  hintText: S.of(context).videoLink,
                  hintStyle: AppTextStyle.darkBlue700S12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
