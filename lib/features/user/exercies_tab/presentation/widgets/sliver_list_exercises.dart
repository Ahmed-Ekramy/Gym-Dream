
import 'package:flutter/material.dart';
import '../../../../../common/helper/naviagtion_extentaions.dart';
import '../../../../../common/routes/route.dart';
import '../../../../../core/app_asset.dart';
import '../../../../../generated/l10n.dart';
import 'collection_exercise.dart';

class SliverListExercises extends StatelessWidget {
  const SliverListExercises({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
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
    );
  }
}