import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class PricingCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  final String badge;
  final Color badgeColor;
  final bool selected; // Add this line
  final VoidCallback onTap;

  const PricingCard({
    super.key,
    required this.title,
    required this.price,
    required this.features,
    required this.badge,
    required this.badgeColor,
    required this.selected, // Add this line
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 9.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: selected
                  ? AppColor.primary
                  : AppColor.grey, // Conditional color
              width: 2.w,
            ),
            color: AppColor.primaryLightThan),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: AppTextStyle.orange700S16),
                Image.asset(
                  AppAsset.gold,
                  width: 80.w,
                  height: 50.h,
                ),
              ],
            ),
            Text(
              '$price/${S.of(context).monthly}',
              style: AppTextStyle.orange700S36,
            ),
            SizedBox(height: 8.h),
            ...features.map(
              (feature) => Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  children: [
                    const Icon(Icons.check, color: AppColor.black),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        feature,
                        style: AppTextStyle.black400S14.copyWith(
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
