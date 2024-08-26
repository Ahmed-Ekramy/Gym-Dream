import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_dream/core/app_text_style.dart';

import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../widgets/user_home_body_view.dart';

class UserHomeLayoutView extends StatelessWidget {
  const UserHomeLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 70.h,
              backgroundColor: Colors.transparent, // Set background to transparent
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    color: AppColor.primaryLight,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.r), // Adjust the radius as needed
                      bottomRight: Radius.circular(16.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w), // Add left padding to align
                            child: CircleAvatar(
                              radius: 30.r,
                              backgroundImage: const AssetImage(
                                AppAsset.boy,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ID: 123456', style: AppTextStyle.black600S16),
                              SizedBox(height: 10.h),
                              Text(
                                maxLines: 2,
                                '12 sessions completed, 8 sessions remaining',
                                style: AppTextStyle.blackOpacity600S14.copyWith(
                                  fontSize: 8.sp,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.green,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4.r),
                                        bottomLeft: Radius.circular(4.r),
                                      ),
                                    ),
                                    width: 64.w,
                                    height: 14.h,
                                    child: Center(
                                      child: Text(
                                        'Active',
                                        style: AppTextStyle.white500S7,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.yellowLight,
                                    ),
                                    width: 64.w,
                                    height: 14.h,
                                    child: Center(
                                      child: Text(
                                        'Active',
                                        style: AppTextStyle.blackOpacity500S7,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.redLight,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(4.r),
                                        bottomRight: Radius.circular(4.r),
                                      ),
                                    ),
                                    width: 64.w,
                                    height: 14.h,
                                    child: Center(
                                      child: Text(
                                        'Active',
                                        style: AppTextStyle.blackOpacity500S7,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.bell,
                    color: AppColor.secondary,
                    size: 24.sp,
                  ),
                ),
              ],
            )



    ],
        ),
      ),
    );
  }
}
