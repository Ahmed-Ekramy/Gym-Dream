
import 'package:flutter/material.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';
import '../../../../authentication/widgets/back_icon.dart';

class SliverAppBarProfile extends StatelessWidget {
  const SliverAppBarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        S.of(context).profile,
        style: AppTextStyle.black600S18,
      ),
      centerTitle: true,
      leading: const BackIcon(),
    );
  }
}