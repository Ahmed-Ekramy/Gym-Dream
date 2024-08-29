import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class PasswordChangedSuccessfullyView extends StatelessWidget {
  const PasswordChangedSuccessfullyView({super.key});

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
              height: 165.h,
            ),
            Image.asset(
              AppAsset.passwordChangedSuccessfullyView,
              height: 280,
              width: double.infinity,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              S.of(context).passwordChangedSuccessfullyView,
              style: AppTextStyle.black600S18,
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
