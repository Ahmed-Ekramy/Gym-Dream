import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';

import 'package:gym_dream/features/admin/home/presentation/widgets/admin_header.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_recent_scanned_images.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/custom_scanned_botton.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/custom_warning_massage.dart';

class AdminHomeBodyView extends StatefulWidget {
  const AdminHomeBodyView({super.key});

  @override
  State<AdminHomeBodyView> createState() => _AdminHomeBodyViewState();
}

class _AdminHomeBodyViewState extends State<AdminHomeBodyView> {
  List<String> imageList = [
    AppAsset.boy,
    AppAsset.admin,
    AppAsset.trainee,
    AppAsset.boy,
    AppAsset.boy,
    AppAsset.boy,
    AppAsset.boy,
    AppAsset.boy,
    AppAsset.boy,
    AppAsset.boy
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AdminHeader(),
        const CustomWarningMassage(),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              AdminRecentScannedImages(imageList: imageList),
              SizedBox(width: 50.w),
              Expanded(
                child: BottomScanButton(
                  title: 'Scan Now',
                  textStyle: AppTextStyle.white700S14,
                  icon: SvgPicture.asset(AppAsset.scan),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
