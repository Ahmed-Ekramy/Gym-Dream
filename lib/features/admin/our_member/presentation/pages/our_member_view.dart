import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/custom_app_bar.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/our_member/presentation/widgets/all_member_view_body.dart';
import 'package:gym_dream/features/admin/our_member/presentation/widgets/new_member_view_body.dart';
import 'package:gym_dream/features/admin/our_member/presentation/widgets/search_icon.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';

class OurMemberView extends StatefulWidget {
  static const String routeName = 'OurMemberView';

  const OurMemberView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabbedPageState createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<OurMemberView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Gym members',
          leading: BackIcon(),
          actions: [
            SearchIcon(),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            TabBar(
              tabs: const [
                Text('All members'),
                Text('New members'),
              ],
              indicatorWeight: 3,
              indicatorColor: AppColor.primary,
              indicatorSize: TabBarIndicatorSize.label,
              controller: _tabController,
              dividerColor: Colors.transparent,
              labelStyle: AppTextStyle.black400S14.copyWith(fontSize: 18.sp),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AllMembersViewBody(),
                  NewMemberViewBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
