import 'package:flutter/material.dart';

import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_text_style.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        S.of(context).notification,
        style: AppTextStyle.black600S18,
      ),
      centerTitle: true,
      leading: const BackIcon(),
    );
  }
}
