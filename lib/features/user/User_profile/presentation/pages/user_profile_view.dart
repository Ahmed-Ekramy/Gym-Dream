import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../admin/trusted_user/presentation/widgets/days_left_item.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColor.orangeLight,
              title: Text(
                S.of(context).profile,
                style: AppTextStyle.black600S18,
              ),
              centerTitle: true,
              leading: const BackIcon(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            SliverToBoxAdapter(
              child: CircleAvatar(
                radius: 100.r,
                backgroundImage: const AssetImage(
                  AppAsset.boy,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ahmed Ekramy Fahmy',
                    style: AppTextStyle.black600S18,
                  ),
                  Text(
                    '${S.of(context).id} : 101230',
                    style: AppTextStyle.brown600S18,
                  ),
                  Text(
                    '${S.of(context).whatsAppNumber} : 0123456789',
                    style: AppTextStyle.black500S14,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.25,
                    vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${S.of(context).package}: ${S.of(context).platinum}',
                      style: AppTextStyle.black500S14,
                    ),
                    Text(
                      '${S.of(context).birthDate}: 10/3/2002',
                      style: AppTextStyle.black500S14,
                    ),
                    Text(
                      '${S.of(context).startDate}: 1/3/2024',
                      style: AppTextStyle.black500S14,
                    ),
                    Text(
                      '${S.of(context).endDate}: 1/4/2024',
                      style: AppTextStyle.black500S14,
                    ),
                  ],
                ),
              ),
            ),
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
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(
                    child: DaysLeftItem(
                      value: '30',
                      time: S.of(context).days,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    child: DaysLeftItem(
                      value: '10',
                      time: S.of(context).hours,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    child: DaysLeftItem(
                      value: '32',
                      time: S.of(context).minutes,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(
                    child: DaysLeftItem(
                      value: '23',
                      time: S.of(context).seconds,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
