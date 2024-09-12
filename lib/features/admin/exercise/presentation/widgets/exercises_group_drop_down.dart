import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/manager/cubit/exercise_cubit.dart';

class ExercisesGroupDropDown extends StatelessWidget {
  const ExercisesGroupDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseCubit, ExerciseState>(
      builder: (context, state) {
        var cubit = ExerciseCubit.get(context);
        String selectedGroup = cubit.selectedGroup;
        if (state is DropDownState) {
          selectedGroup = state.selectedGroup;
        }
        return DropdownButton<String>(
          value: selectedGroup,
          elevation: 16,
          style: AppTextStyle.black500S14,
          underline: Container(
            height: 2,
            color: AppColor.primary,
          ),
          onChanged: (String? value) {
            if (value != null) {
              cubit.selectGroup(value);
            }
          },
          items: cubit.dropList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        );
      },
    );
  }
}
