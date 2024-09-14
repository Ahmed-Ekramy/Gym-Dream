import 'package:flutter/material.dart';

import 'package:gym_dream/common/widgets/custom_app_bar.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

import 'package:gym_dream/features/admin/setting/presentation/widgets/admin_profile_view_body.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminProfileView extends StatelessWidget {
  const AdminProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).profile,

      ),
      body: const AdminProfileViewBody(),
    );
  }
}
