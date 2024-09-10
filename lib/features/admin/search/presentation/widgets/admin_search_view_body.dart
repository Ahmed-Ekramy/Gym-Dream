import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/generated/l10n.dart';

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
              hintText: S.of(context).fullName,
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
              hintText: S.of(context).id,
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
              hintText: S.of(context).package,
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
              hintText: S.of(context).gender,
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
              hintText: S.of(context).phoneNumber,
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
              title: S.of(context).search,
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
