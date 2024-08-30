import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_recent_scanned_images.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/custom_text_and_icon_botton.dart';

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
          AdminRecentScannedImages(
            title: '   Recently scanned',
            imageList: imageList,
          ),
          SizedBox(width: 50.w),
          Expanded(
            child: BottomTextAndIconButton(
              title: 'Scan Now',
              textStyle: AppTextStyle.white700S14,
              icon: SvgPicture.asset(AppAsset.scan),
            ),
          ),
        ],
      ),
    );
  }
}
