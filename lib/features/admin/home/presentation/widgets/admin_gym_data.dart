import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_gym_data_item.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminGymData extends StatelessWidget {
  const AdminGymData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).gymData,
            style: AppTextStyle.black700S22,
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: FadeInLeft(
                  child: AdminGymDataItem(
                    title: S.of(context).peopleInGymNow,
                    value: '90',
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: FadeInRight(
                  child: AdminGymDataItem(
                    title: S.of(context).equipmentUsages,
                    value: '30%',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: FadeInLeft(
                  child: AdminGymDataItem(
                    title: S.of(context).checkInsToday,
                    value: '200',
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: FadeInRight(
                  child: AdminGymDataItem(
                    title: S.of(context).totalCheckInsThisMonth,
                    value: '1,321',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
