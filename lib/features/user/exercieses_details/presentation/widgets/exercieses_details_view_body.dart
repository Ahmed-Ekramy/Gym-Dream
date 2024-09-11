
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/user/exercieses_details/presentation/widgets/sliver_list_exercises_details.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';
import 'exercises_details_app_bar.dart';

class ExercisesDetailsViewBody extends StatelessWidget {
  const ExercisesDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const ExercisesDetailsAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.0.w,
                ),
                child: Text(
                  S.of(context).trainWithTheLatestWorkoutsThatFitYourDay,
                  style: AppTextStyle.gray600S6.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
            const SliverListExercisesDetails(),
          ],
        ),
      ),
    );
  }
}

