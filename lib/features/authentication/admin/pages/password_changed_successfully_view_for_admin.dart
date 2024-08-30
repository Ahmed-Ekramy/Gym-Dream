import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class PasswordChangedSuccessfullyViewForAdmin extends StatelessWidget {
  const PasswordChangedSuccessfullyViewForAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 85.h,
            ),
            Image.asset(
              AppAsset.passwordChangedSuccessfullyView,
              height: 310.h,
              width: double.infinity,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: S.of(context).passwordChanged,
                    style: AppTextStyle.black600S18,
                  ),
                  TextSpan(
                    text: S.of(context).successfully,
                    style: AppTextStyle.black600S18.copyWith(
                      color: AppColor.green,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              width: double.infinity,
              title: S.of(context).goToHome,
              onPressed: () {},
            ),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
    );
  }
}
