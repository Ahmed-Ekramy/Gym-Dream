import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class AdminGymDataItem extends StatelessWidget {
  const AdminGymDataItem({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.sw,
      height: 100.h,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: 16.h),
      decoration: BoxDecoration(
        color: AppColor.bluePale,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.black500S16,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: Text(
              value,
              style: AppTextStyle.black700S24,
            ),
          ),
        ],
      ),
    );
  }
}
