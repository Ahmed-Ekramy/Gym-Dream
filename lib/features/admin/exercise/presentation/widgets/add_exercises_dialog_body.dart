import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/manager/cubit/exercise_cubit.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/add_exercises_text_field.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/exercises_group_drop_down.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/upload_exercase_image.dart';
import 'package:image_picker/image_picker.dart';

class AddExercisesDialogBody extends StatelessWidget {
  const AddExercisesDialogBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();

    return BlocProvider(
      create: (context) => ExerciseCubit(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UploadExerciseImage(
            picker: picker,
          ),
          const AddExercisesTextField(
            hint: 'name',
            readOnly: false,
            textInputType: TextInputType.text,
          ),
          const AddExercisesTextField(
            hint: 'count',
            readOnly: false,
            textInputType: TextInputType.number,
          ),
          const AddExercisesTextField(
            hint: 'repetition',
            readOnly: false,
            textInputType: TextInputType.number,
          ),
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: ExercisesGroupDropDown(),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: AppColor.babyBlue,
              hintText: 'Video Link',
              hintStyle: AppTextStyle.darkBlue700S12,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
