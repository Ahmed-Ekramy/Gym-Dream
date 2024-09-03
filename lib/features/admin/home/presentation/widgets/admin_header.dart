import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_personal_information_and_capacity.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/card_icon_bottom.dart';

class AdminHeader extends StatelessWidget implements PreferredSizeWidget {
  final double toolbarHeight;

  const AdminHeader({
    super.key,
    this.toolbarHeight = 90.0, // Default height if not provided
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: toolbarHeight.h,
      backgroundColor: AppColor.primaryLight,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: const AssetImage(AppAsset.boy),
          ),
          SizedBox(width: 5.w),
          const Expanded(
            child: AdminPersonalInformationAndCapacity(),
          ),
        ],
      ),
      actions: const [
        CardIconBottom(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight.h);
}
