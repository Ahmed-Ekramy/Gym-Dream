import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/custom_text_and_icon_botton.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/recently_member_images.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminRecentlyScanned extends StatelessWidget {
  const AdminRecentlyScanned({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          RecentlyMemberImages(
            title: S.of(context).recentlyScanned,
            imageList: imageList,
          ),
          SizedBox(width: 50.w),
          Expanded(
            child: BottomTextAndIconButton(
              onTap: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.qrCodeView);
              },
              title: S.of(context).scannNow,
              textStyle: AppTextStyle.white700S14,
              icon: SvgPicture.asset(AppAsset.scan),
            ),
          ),
        ],
      ),
    );
  }
}

bool isValidPerson(String scanResult) {
  // compare scanResult with a valid IDs
  return scanResult == "valid_qr_code";
}
