import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';
import 'sliver_list_exercises.dart';

class ExercisesViewBody extends StatelessWidget {
  const ExercisesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.0.w,
        vertical: 10.h,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              S.of(context).ourCollection,
              style: AppTextStyle.black600S18,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 2.h,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              S.of(context).trainWithTheLatestWorkoutsThatFitYourDay,
              style: AppTextStyle.gray600S6.copyWith(
                fontSize: 12.sp,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8.h,
            ),
          ),
          const SliverListExercises()
        ],
      ),
    );
  }
}
