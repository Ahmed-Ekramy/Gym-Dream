import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/trusted_user/presentation/widgets/days_left_widget.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminConfirmUserBody extends StatefulWidget {
  const AdminConfirmUserBody({super.key});

  @override
  State<AdminConfirmUserBody> createState() => _AdminConfirmUserBodyState();
}

class _AdminConfirmUserBodyState extends State<AdminConfirmUserBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackIcon(),
            SizedBox(height: 20.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmed Ekramy Fahmy',
                      style: AppTextStyle.black600S18,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '${S.of(context).id}: 101230',
                      style: AppTextStyle.brown600S18,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '${S.of(context).whatsAppNumber}:\n01123456789',
                      style: AppTextStyle.black400S15,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          '${S.of(context).package} ${S.of(context).platinum}',
                          style: AppTextStyle.black400S15,
                        ),
                        Image.asset(
                          AppAsset.gold,
                          width: 30.w,
                          height: 30.h,
                        )
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '${S.of(context).birthDate}: 10/3/2002',
                      style: AppTextStyle.black400S15,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '${S.of(context).startDate}: 1/3/2024',
                      style: AppTextStyle.black400S15,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '${S.of(context).endDate}: 1/4/2024',
                      style: AppTextStyle.black400S15,
                    ),
                    SizedBox(height: 8.h),
                    // const DaysLeftWidget(),
                  ],
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Image.asset(AppAsset.boy),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            const DaysLeftWidget(),
            const Spacer(),
            CustomButton(
              width: double.infinity,
              height: 30.h,
              title: S.of(context).confirm,
              onPressed: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.homeAdminLayout);
              },
            )
          ],
        ),
      ),
    );
  }
}
