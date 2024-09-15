import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/user/history_tab/presentation/widgets/container_history_schedule.dart';
import 'package:gym_dream/features/user/history_tab/presentation/widgets/custom_text_history.dart';
import 'package:gym_dream/features/user/history_tab/presentation/widgets/list_history.dart';

class AdminHistoryViewBody extends StatelessWidget {
  const AdminHistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.h,
            ),
            const CustomTextHistory(),
            SizedBox(
              height: 8.h,
            ),
            const ContainerHistorySchedule(),
            SizedBox(
              height: 8.h,
            ),
            const ListHistory(),
          ],
        ),
      ),
    );
  }
}
