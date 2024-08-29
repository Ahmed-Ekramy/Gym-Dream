import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_row_capacity.dart';

class AdminPersonalInformationAndCapacity extends StatelessWidget {
  const AdminPersonalInformationAndCapacity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ID : 101010',
          style: AppTextStyle.black600S16,
        ),
        Text(
          'Branch : Ahmed Maher Street',
          style: AppTextStyle.blackOpacity400S14.copyWith(
            fontSize: 12.sp,
          ),
        ),
        SizedBox(height: 2.h),
        const AdminRowCapacity(
          capacity: 100,
        ),
      ],
    );
  }
}
