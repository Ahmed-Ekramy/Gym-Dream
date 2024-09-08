import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/exercises_card.dart';
import 'package:gym_dream/core/app_color.dart';

class ExerciseListItem extends StatelessWidget {
  final String exercise;
  final int index;
  final Animation<double> animation;
  final VoidCallback onRemove;

  const ExerciseListItem({
    super.key,
    required this.exercise,
    required this.index,
    required this.animation,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      axisAlignment: 0.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),
        child: ExercisesCard(
          deleteButton: IconButton(
            icon: Icon(
              Icons.delete,
              size: 18.sp,
              color: AppColor.red,
            ),
            onPressed: onRemove,
          ),
        ),
      ),
    );
  }
}
