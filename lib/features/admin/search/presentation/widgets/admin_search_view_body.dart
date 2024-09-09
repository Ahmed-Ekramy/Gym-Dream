import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';

class AdminSearchViewBody extends StatelessWidget {
  const AdminSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppTextFormFiled(
              filled: true,
              fillColor: AppColor.grayLight,
              hintText: 'Nmae',
              obscureText: false,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppAsset.search,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            AppTextFormFiled(
              filled: true,
              fillColor: AppColor.grayLight,
              hintText: 'Id',
              obscureText: false,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppAsset.search,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            AppTextFormFiled(
              filled: true,
              fillColor: AppColor.grayLight,
              hintText: 'Package',
              obscureText: false,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppAsset.arrowDown,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            AppTextFormFiled(
              filled: true,
              fillColor: AppColor.grayLight,
              hintText: 'Gender',
              obscureText: false,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppAsset.arrowDown,
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            AppTextFormFiled(
              filled: true,
              fillColor: AppColor.grayLight,
              hintText: 'Phone number',
              obscureText: false,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppAsset.search,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomButton(
              height: 35.h,
              width: double.infinity,
              title: 'Search',
              onPressed: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.adminSearchResultView);
              },
            )
          ],
        ),
      ),
    );
  }
}
