
import 'package:flutter/material.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';
import '../../../../authentication/widgets/back_icon.dart';

class ExercisesDetailsAppBar extends StatelessWidget {
  const ExercisesDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: const BackIcon(),
      title: Text(
        S.of(context).chestAndAbdominalExercises,
        style: AppTextStyle.black600S18,
      ),
    );
  }
}