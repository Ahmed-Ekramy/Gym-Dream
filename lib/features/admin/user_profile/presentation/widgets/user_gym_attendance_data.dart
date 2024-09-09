import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class UserGymAttendanceDataList extends StatelessWidget {
  const UserGymAttendanceDataList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
              left: 8.0.w, right: 8.0.w, bottom: 8.0.h, top: 8.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2/3/2024", style: AppTextStyle.blueNavy400S12),
              Row(
                children: [
                  CircleAvatar(
                    radius: 3.r,
                    backgroundColor: AppColor.blue,
                  ),
                  SizedBox(width: 4.w),
                  Text("in 10:30", style: AppTextStyle.blueNavy400S12),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 3.r,
                    backgroundColor: AppColor.red,
                  ),
                  SizedBox(width: 4.w),
                  Text("out 12:30", style: AppTextStyle.blueNavy400S12),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.h),
          child: Divider(
            color: AppColor.grey,
            thickness: 1.h,
          ),
        );
      },
      itemCount: 30,
    );
  }
}
