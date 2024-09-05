import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/core/app_asset.dart';

import '../../../../../../common/routes/route.dart';
import '../../../../../../core/app_text_style.dart';

class ExercisesTab extends StatelessWidget {
  const ExercisesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Text('Our Collection', style: AppTextStyle.black600S18)),
          SliverToBoxAdapter(child: SizedBox(height: 2.h)),
          SliverToBoxAdapter(
              child: Text('Train with the latest workouts that fit your day.',
                  style: AppTextStyle.gray600S6.copyWith(fontSize: 12.sp))),
          SliverToBoxAdapter(child: SizedBox(height: 8.h)),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.exerciseDetails);
              },
              child: const CollectionExercise(
                imageBackground: AppAsset.chestBackground,
                imageExercise: AppAsset.chestMan,
                nameExercise: 'Chest and abdominal exercises',
                numberExercises: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CollectionExercise extends StatelessWidget {
  const CollectionExercise({
    required this.imageBackground,
    required this.imageExercise,
    required this.nameExercise,
    required this.numberExercises,
    super.key,
  });

  final String imageBackground;
  final String imageExercise;
  final String nameExercise;
  final int numberExercises;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 110.h,
        color: Colors.transparent,
        child: Stack(
          children: [
            Image.asset(
              height: 110.h,
              imageBackground,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                SizedBox(
                  width: 190.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            nameExercise,
                            style: AppTextStyle.black500S14),
                        Row(
                          children: [
                            Image.asset(AppAsset.weightLifting,
                                width: 50.w, height: 50.h),
                            Text('$numberExercises Exercises',
                                style: AppTextStyle.blackOpacity600S14),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset(imageExercise,
                    fit: BoxFit.fill, width: 130.w, height: 110.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
