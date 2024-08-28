import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../common/widgets/custom_button_widget.dart';
import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../widgets/custom_flixibleBar.dart';

class UserHomeLayoutView extends StatelessWidget {
  const UserHomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 70.h,
              backgroundColor: Colors.transparent,
              flexibleSpace: const CustomFlexibleBar(),
              actions: [
                SvgPicture.asset(
                  color: AppColor.secondary,
                  AppAsset.bell,
                  width: 24.w,
                  height: 24.h,
                ),
              ],
            ),
            SliverToBoxAdapter(
                child: Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("warning", style: AppTextStyle.redBlood500S14),
                        CustomButton(
                          width: 90.w,
                          height: 20.h,
                          title: "Our branches",
                          textStyle: AppTextStyle.white700S14
                              .copyWith(fontSize: 10.sp),
                          onPressed: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text("The gym is now full, you can go to other addresses",
                        style:
                            AppTextStyle.black400S15.copyWith(fontSize: 12.sp)),
                  ],
                ),
              ),
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                  child: Text("My qr code", style: AppTextStyle.orange700S16)),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: QrImageView(
                    data: "123456", version: QrVersions.auto, size: 270.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
