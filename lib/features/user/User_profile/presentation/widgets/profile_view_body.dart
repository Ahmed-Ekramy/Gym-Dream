import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/user/User_profile/presentation/widgets/sliver_app_bar_profile.dart';
import 'package:gym_dream/features/user/User_profile/presentation/widgets/sliver_circle_avatar.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';
import 'custom_some_details_from_user.dart';
import 'custom_text_nam_and_id_and_whats_app.dart';
import 'days_left_package.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBarProfile(),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            const SliverCircleAvatar(),
            const CustomTextNamAndIdAndWhatsApp(),
            const CustomSomeDetailsFromUser(),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 10.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).daysLeftForYourPackage,
                    style: AppTextStyle.black700S18,
                  ),
                ),
              ),
            ),
            const DaysLeftPackage()
          ],
        ),
      ),
    );
  }
}



