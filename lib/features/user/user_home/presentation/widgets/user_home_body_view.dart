import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_color.dart';

class UserHomeBodyView extends StatelessWidget {
  const UserHomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 134.h,
          decoration:  BoxDecoration(
            color: AppColor.primaryLight,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
          ),
          child: const Row(
            children: [],
          ),
        )
      ],
    );
  }
}