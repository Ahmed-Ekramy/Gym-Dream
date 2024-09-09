import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/core/app_color.dart';

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
                title: Text('Profile', style: AppTextStyle.black600S18),
                centerTitle: true,
                leading: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(5.sp),
                    child: SvgPicture.asset(
                      fit: BoxFit.fill,
                      width: 10.w,
                      height: 10.h,
                      AppAsset.arrowCircleRight,
                    ),
                  ),
                )),
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
                child: Center(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Ahmed Ekramy Fahmy\n ',
                    style: AppTextStyle.black600S18,
                  ),
                  TextSpan(
                    text: '           ID : 101230\n\n',
                    style: AppTextStyle.brown600S18,
                  ),
                  TextSpan(
                    text: ' WhatsApp Number : 0123456789',
                    style: AppTextStyle.black500S14,
                  ),
                ]),
              ),
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.25,
                    vertical: 20.h),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: 'Platinum Package\n\n',
                        style: AppTextStyle.black500S14),
                    TextSpan(
                        text: 'Birth date : 10/3/2002\n\n',
                        style: AppTextStyle.black500S14),
                    TextSpan(
                        text: 'Start Date: 1/3/2024\n\n',
                        style: AppTextStyle.black500S14),
                    TextSpan(
                        text: 'End Date: 1/4/2024\n',
                        style: AppTextStyle.black500S14),
                  ]),
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
                    'Days left for your package',
                    style: AppTextStyle.black700S18,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  const Expanded(
                    child: DaysLeftItem(
                      value: '30',
                      time: 'Days',
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: DaysLeftItem(
                      value: '10',
                      time: 'Hours',
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: DaysLeftItem(
                      value: '32',
                      time: 'Minutes',
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Expanded(
                    child: DaysLeftItem(
                      value: '23',
                      time: 'Seconds',
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
