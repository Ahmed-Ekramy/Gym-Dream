import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../../../common/widgets/custom_button_widget.dart';
import '../../../../../../core/app_text_style.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                ),
                margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("warning", style: AppTextStyle.redBlood500S14),
                        CustomButton(
                          width: 130.w,
                          height: 30.h,
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
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
              child: Text("History", style: AppTextStyle.orange600S18)),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Text("Last session", style: AppTextStyle.gray600S14),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5.h,
          ),
        ),
        SliverList.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: 8.0.w, right: 8.0.w, bottom: 8.0.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2/3/2024",
                          style: index == 0
                              ? AppTextStyle.blackOpacity500S12
                              .copyWith(fontSize: 14.sp)
                              : AppTextStyle.blackOpacity500S12),
                      Text("in 10:30",
                          style: index == 0
                              ? AppTextStyle.blueNavy500S14
                              .copyWith(fontSize: 14.sp)
                              : AppTextStyle.blueNavy600S12),
                      Text("out 12:30",
                          style: index == 0
                              ? AppTextStyle.blueNavy500S14
                              .copyWith(fontSize: 14.sp)
                              : AppTextStyle.blueNavy600S12),
                    ]),
              );
            })
      ],
    ) ;
  }
}
