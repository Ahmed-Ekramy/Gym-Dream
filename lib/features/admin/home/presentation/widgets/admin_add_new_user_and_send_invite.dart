import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/custom_text_and_icon_botton.dart';

class AdminAddNewUserAndSendInvite extends StatelessWidget {
  const AdminAddNewUserAndSendInvite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65.h,
      decoration: const BoxDecoration(
        color: AppColor.primaryLightThan,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Column(
                children: [
                  Text(
                    'Add New Users',
                    style: AppTextStyle.black500S16,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Send an invite to join',
                    style: AppTextStyle.black400S14.copyWith(
                      color: const Color(0xffA17545),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50.w,
            ),
            Expanded(
              child: BottomTextAndIconButton(
                title: 'Add Member',
                textStyle: AppTextStyle.orange600S14,
                icon: SvgPicture.asset(
                  AppAsset.add,
                ),
                backGroundcolor: const Color(0xffF5EDE5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
