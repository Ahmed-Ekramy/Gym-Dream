import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_header.dart';
import 'package:gym_dream/features/admin/our_member/presentation/widgets/gym_member_list_view_item.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminSearchResultView extends StatelessWidget {
  const AdminSearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AdminHeader(),
      body: Column(
        children: [
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Text(
                  S.of(context).result,
                  style: AppTextStyle.black400S22,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppAsset.search,
                    color: AppColor.primary,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: GestureDetector(
                    onTap: () {
                      AppNavigation.navigateTo(
                          context: context, routeName: Routes.userDataView);
                    },
                    child: const GymMemberListViewItem(
                      id: '101230',
                      image: AppAsset.boy,
                      name: 'Shady Mohamed Steha',
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
