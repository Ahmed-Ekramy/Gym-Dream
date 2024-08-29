import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/core/app_asset.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: IconButton(
        onPressed: () {
          AppNavigation.pop(context);
        },
        icon: Localizations.localeOf(context).languageCode == 'en'
            ? SvgPicture.asset(
                AppAsset.backIcon,
                height: 30.h,
              )
            : Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(
                  3.14159,
                ),
                child: SvgPicture.asset(
                  AppAsset.backIcon,
                  height: 30.h,
                ),
              ),
      ),
    );
  }
}
