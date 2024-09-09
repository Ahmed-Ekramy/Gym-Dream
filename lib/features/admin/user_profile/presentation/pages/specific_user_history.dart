import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/widgets/history_and_gym_attendance_text.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/widgets/history_gym_attendance_schedule.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/widgets/user_gym_attendance_data.dart';
import 'package:gym_dream/features/admin/user_profile/presentation/widgets/user_history_header.dart';

class SpecificUserHistory extends StatelessWidget {
  const SpecificUserHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UserHistoryHeader(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HistoryAndGymAttendanceText(),
            SizedBox(
              height: 8.h,
            ),
            const HistoryGymAttendanceSchedule(),
            const Expanded(
              child: UserGymAttendanceDataList(),
            ),
          ],
        ),
      ),
    );
  }
}
