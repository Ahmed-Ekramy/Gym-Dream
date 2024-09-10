import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/setting/presentation/widgets/admin_setting_view_body.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminSettingView extends StatelessWidget {
  const AdminSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40.w,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: const BackIcon(),
        ),
        title: Text(
          S.of(context).settings,
          style: AppTextStyle.black500S20,
        ),
      ),
      body: const AdminSettingViewBody(),
    );
  }
}
