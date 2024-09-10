import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/admin/history/presentation/widgets/recent_scanner_date.dart';

import 'custom_app_bar_history.dart';
import 'custom_container_schedule_admin.dart';
import 'custom_text_rich.dart';

class AdminHistoryViewBody extends StatelessWidget {
  const AdminHistoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const CustomAppBarHistory(),
      const CustomTextRich(),
      SliverToBoxAdapter(child: SizedBox(height: 8.h)),
      const CustomContainerScheduleAdmin(),
      const RecentScannerDate(),
    ]);
  }
}
