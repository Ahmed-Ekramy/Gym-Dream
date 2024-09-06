import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/notification_app_bar.dart';
import '../widgets/notification_list.dart';

class NotificationUserView extends StatelessWidget {
  const NotificationUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const NotificationAppBar(),
            SliverToBoxAdapter(
              child: SizedBox(height: 10.h),
            ),
            const NotificationList(),
          ],
        ),
      ),
    );
  }
}
