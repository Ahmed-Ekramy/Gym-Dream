import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/admin/admin_home/presentation/widgets/admin_personal_information_and_capacity.dart';

import 'card_icon_bottom.dart';

class AdminHomeBodyView extends StatelessWidget {
  const AdminHomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColor.primaryLight,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              )),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30.h)
                .copyWith(bottom: 16.h),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 26.r,
                  backgroundImage: const AssetImage(
                    AppAsset.boy,
                  ),
                ),
                SizedBox(width: 11.w),
                const AdminPersonalInformationAndCapacity(),
                const Spacer(),
                CardIconBottom()
              ],
            ),
          ),
        )
      ],
    );
  }
}
