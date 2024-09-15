import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_text_style.dart';

class CustomAppBarHistory extends StatelessWidget {
  const CustomAppBarHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leadingWidth: 35.w,
      automaticallyImplyLeading: false,
      toolbarHeight: 50.h,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      title: Text(
        S.of(context).recentlyScanned,
        style: AppTextStyle.black400S22,
      ),
    );
  }
}
