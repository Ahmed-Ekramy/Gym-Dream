import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_gym_data_item.dart';

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
            'Gym Data',
            style: AppTextStyle.black700S22,
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              const Expanded(
                child: AdminGymDataItem(
                  title: 'People in Gym now',
                  value: '90',
                ),
              ),
              SizedBox(width: 16.w),
              const Expanded(
                child: AdminGymDataItem(
                  title: 'Equipment Usages',
                  value: '30%',
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              const Expanded(
                child: AdminGymDataItem(
                  title: 'Check-ins Today',
                  value: '200',
                ),
              ),
              SizedBox(width: 16.w),
              const Expanded(
                child: AdminGymDataItem(
                  title: 'Total Check-ins this month',
                  value: '1,321',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
