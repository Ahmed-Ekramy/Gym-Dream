import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/manager/cubit/exercise_cubit.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/add_exercises_button.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/exercises_list_item.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';

class AdminExerciseViewBody extends StatelessWidget {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  AdminExerciseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ExerciseCubit()..loadExercises(), // Ensure exercises are loaded
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              pinned: false,
              leading: BackIcon(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chest and abdominal exercises',
                      style: AppTextStyle.black600S18,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Chest and abdominal exercises',
                      style: AppTextStyle.grey400S11,
                    ),
                    SizedBox(height: 8.h),
                    const AddExercisesButton(),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: BlocBuilder<ExerciseCubit, ExerciseState>(
                builder: (context, state) {
                  if (state is ExerciseListSuccess &&
                      state.exercises.isNotEmpty) {
                    final exercises = state.exercises;
                    return AnimatedList(
                      physics: const BouncingScrollPhysics(),
                      key: listKey,
                      initialItemCount: exercises.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index, animation) {
                        return ExerciseListItem(
                          exercise: exercises[index],
                          index: index,
                          animation: animation,
                          onRemove: () => removeItem(context, index),
                        );
                      },
                    );
                  } else if (state is ExerciseListSuccess &&
                      state.exercises.isEmpty) {
                    // Show message if the list is empty
                    return Center(
                      child: Text(
                        'No exercises available.',
                        style: AppTextStyle.black500S14,
                      ),
                    );
                  }
                  return const Center(
                      child: CircularProgressIndicator(
                    color: AppColor.primary,
                  )); // Show a loader while fetching data
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void removeItem(BuildContext context, int index) {
    final exercisesCubit = context.read<ExerciseCubit>();
    if (exercisesCubit.state is ExerciseListSuccess) {
      final currentState = exercisesCubit.state as ExerciseListSuccess;
      final removedExercise = currentState.exercises[index];

      listKey.currentState?.removeItem(
        index,
        (context, animation) => ExerciseListItem(
          exercise: removedExercise,
          index: index,
          animation: animation,
          onRemove: () {},
        ),
        duration: const Duration(milliseconds: 600),
      );

      exercisesCubit.deleteExercise(index);
    }
  }
}
