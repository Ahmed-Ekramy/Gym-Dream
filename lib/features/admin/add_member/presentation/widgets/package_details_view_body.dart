import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/package_pricing_card.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';

class PackageDetailsViewBody extends StatefulWidget {
  const PackageDetailsViewBody({super.key});

  @override
  State<PackageDetailsViewBody> createState() => _PackageDetailsViewBodyState();
}

class _PackageDetailsViewBodyState extends State<PackageDetailsViewBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
        child: Column(
          children: [
            Row(
              children: [
                const BackIcon(),
                SizedBox(width: 32.w),
                Text(
                  'Choose your plan',
                  style: AppTextStyle.black700S20,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    child: PricingCard(
                      selected: selectedIndex ==
                          index, // Check if this card is selected
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Update the selected index
                        });
                      },
                      title: 'Gold',
                      price: '\$20',
                      features: const [
                        'Unlimited use of essential sports equipment',
                        'One consultation session with a personal trainer when you sign up for the first time',
                        'Use a personal locker daily.',
                      ],
                      badge: 'GOLD',
                      badgeColor: AppColor.primary,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 8.h),
            CustomButton(
              width: double.infinity,
              height: 30.h,
              title: 'Confirm',
              onPressed: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.adminConfirmUser);
              },
            ),
          ],
        ),
      ),
    );
  }
}
