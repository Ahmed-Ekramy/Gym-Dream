import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        S.of(context).notification,
        style: AppTextStyle.black600S18,
      ),
      centerTitle: true,
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: EdgeInsets.all(5.sp),
          child: SvgPicture.asset(
            fit: BoxFit.fill,
            width: 10.w,
            height: 10.h,
            AppAsset.arrowCircleRight,
          ),
        ),
      ),
    );
  }
}
