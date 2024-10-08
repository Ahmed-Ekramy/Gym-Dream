import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_add_new_user_and_send_invite.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_header.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_recently_scanned.dart';
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
        AdminRecentlyScanned(imageList: imageList),
        SizedBox(height: 8.h),
        const AdminAddNewUserAndSendInvite()
      ],
    );
  }
}
