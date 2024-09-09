import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/app_text_style.dart';
import '../widgets/container_history_schedule.dart';
import '../widgets/sliver_list_history.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Text('History', style: AppTextStyle.black600S18)),
          SliverToBoxAdapter(child: SizedBox(height: 2.h)),
          SliverToBoxAdapter(
              child: Text('Your gym attendance date',
                  style: AppTextStyle.gray600S6)),
          SliverToBoxAdapter(child: SizedBox(height: 8.h)),
          const ContainerHistorySchedule(),
          SliverToBoxAdapter(child: SizedBox(height: 8.h)),
          const SliverListHistory()
        ],
      ),
    );
  }
}



