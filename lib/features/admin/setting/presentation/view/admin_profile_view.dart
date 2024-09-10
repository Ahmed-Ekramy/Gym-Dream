import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/setting/presentation/widgets/admin_profile_view_body.dart';

class AdminProfileView extends StatelessWidget {
  const AdminProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Profile',
        actions: [
          Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              SvgPicture.asset(
                AppAsset.logoutIcon,
                width: 18.w,
                color: AppColor.red,
              ),
              Expanded(
                child: Text(
                  'Log out',
                  style:
                      AppTextStyle.redBlood500S10.copyWith(color: AppColor.red),
                ),
              ),
            ],
          )
        ],
      ),
      body: const AdminProfileViewBody(),
    );
  }
}
