import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'container_history_schedule.dart';
import 'custom_text_history.dart';
import 'list_history.dart';

class HistoryViewBody extends StatelessWidget {
  const HistoryViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
    );
  }
}
