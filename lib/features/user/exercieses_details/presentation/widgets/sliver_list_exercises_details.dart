import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common/widgets/exercises_card.dart';

class SliverListExercisesDetails extends StatelessWidget {
  const SliverListExercisesDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.0.w,
          vertical: 5.h,
        ),
        child: const ExercisesCard(),
      ),
      itemCount: 10,
    );
  }
}
