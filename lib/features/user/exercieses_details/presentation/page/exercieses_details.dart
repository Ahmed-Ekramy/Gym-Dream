import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/exercises_card.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';

import '../../../../../core/app_text_style.dart';

class ExercisesDetails extends StatelessWidget {
  const ExercisesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              leading: BackIcon(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Chest and abdominal exercises\n',
                          style: AppTextStyle.black600S18),
                      TextSpan(
                          text:
                              'Train with the latest workouts that fit your day.',
                          style:
                              AppTextStyle.gray600S6.copyWith(fontSize: 12.sp)),
                    ],
                  ),
                ),
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),
                child: const ExercisesCard(),
              ),
              itemCount: 10,
            ),
          ],
        ),
      ),
    );
  }
}
