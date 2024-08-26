
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/app_asset.dart';
import '../../../../../core/app_color.dart';
import '../widgets/custom_flixibleBar.dart';
import '../widgets/custom_row_capacity.dart';

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
              flexibleSpace: const CustomFlexibleBar(),
              actions: [
                SvgPicture.asset(
                  color:  AppColor.secondary,
                  AppAsset.bell,
                  width: 24.w,
                  height: 24.h,
                ),
              ],
            ),

    ],
        ),
      ),
    );
  }
}



