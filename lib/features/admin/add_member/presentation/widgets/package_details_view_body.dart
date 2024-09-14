import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/add_member/presentation/widgets/package_pricing_card.dart';
import 'package:gym_dream/features/authentication/widgets/back_icon.dart';
import 'package:gym_dream/generated/l10n.dart';

class PackageDetailsViewBody extends StatefulWidget {
  const PackageDetailsViewBody({super.key});

  @override
  State<PackageDetailsViewBody> createState() => _PackageDetailsViewBodyState();
}

class _PackageDetailsViewBodyState extends State<PackageDetailsViewBody> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
          child: Column(
            children: [
              Row(
                children: [
                  const BackIcon(),
                  SizedBox(width: 32.w),
                  Text(
                    S.of(context).chooseYourPlan,
                    style: AppTextStyle.black700S20,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: ListView.builder(
                  itemCount: 3, // Update based on the number of packages
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      child: PricingCard(
                        selected: selectedIndex == index,
                        onTap: () {
                          setState(() {
                            selectedIndex = index; // Update selected package
                          });
                        },
                        title: S.of(context).gold, // Example package name
                        price: '\$20',
                        features: [
                          S.of(context).unlimitedUseOfEssentialSportsEquipment,
                          S
                              .of(context)
                              .oneConsultationSessionWithAPersonalTrainerWhenYouSignUpForTheFirstTime,
                          S.of(context).useAPersonalLockerDaily,
                        ],
                        badge: S.of(context).gold,
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
                title: S.of(context).confirm,
                onPressed: () {
                  // Pass the selected package name back
                  String selectedPackage = selectedIndex == 0
                      ? S.of(context).gold
                      : selectedIndex == 1
                          ? S.of(context).silver
                          : S.of(context).primary; // Example names

                  Navigator.pop(
                      context, selectedPackage); // Return selected package
                },
              ),
            ],
          ),


        ),
      ),
    );
  }
}
