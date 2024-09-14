import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/app_text_form_field.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminSearchViewBody extends StatefulWidget {
  const AdminSearchViewBody({super.key});

  @override
  _AdminSearchViewBodyState createState() => _AdminSearchViewBodyState();
}

class _AdminSearchViewBodyState extends State<AdminSearchViewBody> {
  bool isPackageDropdownOpen = false; // To track dropdown state
  String? selectedPackage;
  final List<Map<String, String>> packages = [
    {"name": "Silver", "icon": AppAsset.silver},
    {"name": "Gold", "icon": AppAsset.gold},
    {"name": "Platinum", "icon": AppAsset.platinum},
  ];
  final List<String> gender = [
    "Male",
    "Female",
  ];
  bool isGenderDropdownOpen = false;
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppTextFormFiled(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
              ],
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
              keyboardType: TextInputType.number,
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
              hintText: selectedPackage ?? S.of(context).package,
              readOnly: true,
              obscureText: false,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPackageDropdownOpen = !isPackageDropdownOpen;
                  });
                },
                icon: SvgPicture.asset(
                  isPackageDropdownOpen ? AppAsset.arrowUp : AppAsset.arrowDown,
                ),
              ),
            ),
            if (isPackageDropdownOpen) ...[
              SizedBox(height: 8.h),
              FadeInDown(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.grayLight,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: packages.map((package) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 32.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedPackage = package['name'];
                              isPackageDropdownOpen = false;

                              print(selectedPackage);
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                package['icon']!,
                                width: 50.w,
                                height: 24.h,
                              ),
                              Text(
                                package['name']!,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
            SizedBox(height: 16.h),
            AppTextFormFiled(
              filled: true,
              fillColor: AppColor.grayLight,
              hintText: selectedGender ?? S.of(context).gender,
              obscureText: false,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isGenderDropdownOpen = !isGenderDropdownOpen;
                  });
                },
                icon: SvgPicture.asset(
                  isGenderDropdownOpen ? AppAsset.arrowUp : AppAsset.arrowDown,
                ),
              ),
            ),
            if (isGenderDropdownOpen) ...[
              SizedBox(height: 8.h),
              FadeInDown(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.grayLight,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: gender.map((package) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                          horizontal: 32.0,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedGender = package;
                              isGenderDropdownOpen = false;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                package,
                                style: AppTextStyle.black400S14,
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
            SizedBox(height: 16.h),
            AppTextFormFiled(
              filled: true,
              fillColor: AppColor.grayLight,
              hintText: "Phone Number",
              keyboardType: TextInputType.phone,
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
              title: "Search",
              onPressed: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.adminSearchResultView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
