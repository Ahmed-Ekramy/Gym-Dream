import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../common/helper/naviagtion_extentaions.dart';
import '../../../../../common/routes/route.dart';
import '../../../../../common/widgets/custom_button_widget.dart';
import '../../../../../core/app_asset.dart';
import '../../../../../core/app_text_style.dart';
import '../../../user_home_layout/presentation/widgets/custom_row_capacity.dart';

class OurBranchesView extends StatelessWidget {
  const OurBranchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
           SliverAppBar(
            leading: const BackIcon(),
            title:      Text(
              S.of(context).ourBranches,
              style: AppTextStyle.black600S18,
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).allOurGymBranches,
                    style: AppTextStyle.gray600S14,
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0.w,
                    vertical: 5.h,
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        fit: BoxFit.fill,
                        AppAsset.backgroundBranch,
                        width: double.infinity,
                        height: 120.h,
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0.w, vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ahmed Maher Street",
                                      style: AppTextStyle.white600S18,
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      "${S.of(context).awayFromYou}: 200 meters",
                                      style: AppTextStyle.gray600S14,
                                    ),
                                    SizedBox(height: 20.h),
                                    const CustomRowCapacity(),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomButton(
                                  height: 20.h,
                                  title: S.of(context).location,
                                  textStyle: AppTextStyle.white700S14
                                      .copyWith(fontSize: 10.sp),
                                  onPressed: () {
                                    AppNavigation.navigateTo(
                                      context: context,
                                      routeName: Routes.ourBranchesView,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                );
              }),
        ],
      )),
    );
  }
}
