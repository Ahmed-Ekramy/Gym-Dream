import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../common/routes/route.dart';
import '../../../../../core/app_text_style.dart';
import '../widgets/collection_exercise.dart';

class ExercisesTab extends StatelessWidget {
  const ExercisesTab({super.key});

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
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                AppNavigation.navigateTo(
                  context: context,
                  routeName: Routes.exerciseDetails,
                );
              },
              child: CollectionExercise(
                imageBackground: AppAsset.chestBackground,
                imageExercise: AppAsset.chestMan,
                nameExercise: S.of(context).chestAndAbdominalExercises,
                numberExercises: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
