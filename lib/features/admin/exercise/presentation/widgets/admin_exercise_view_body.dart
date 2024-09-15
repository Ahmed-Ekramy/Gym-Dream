import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/exercise/presentation/manager/cubit/exercise_cubit.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/add_exercises_button.dart';
import 'package:gym_dream/features/admin/exercise/presentation/widgets/exercises_list_item.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminExerciseViewBody extends StatelessWidget {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  AdminExerciseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExerciseCubit()..loadExercises(),
      child: SafeArea(
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).addNewExercise,
                      style: AppTextStyle.black600S18,
                    ),
                    // SizedBox(height: 8.h),
                    // Text(
                    //   S.of(context).chestAndAbdominalExercises,
                    //   style: AppTextStyle.grey400S11,
                    // ),
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
                    return Center(
                      child: Text(
                        S.of(context).noExercisesAvailable,
                        style: AppTextStyle.black500S14,
                      ),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primary,
                    ),
                  );
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

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            S.of(context).deleteExercise,
            style: AppTextStyle.black600S16,
          ),
          content: Text(
            S.of(context).areYouSureYouWantToDeleteThisExercise,
            style: AppTextStyle.black500S14.copyWith(
              fontSize: 12.sp,
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                if (exercisesCubit.state is ExerciseListSuccess) {
                  final currentState =
                      exercisesCubit.state as ExerciseListSuccess;
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
                    S.of(context).confirm,
                    style: AppTextStyle.white700S14,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
