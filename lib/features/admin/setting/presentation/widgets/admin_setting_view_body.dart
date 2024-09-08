import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/common/widgets/custom_arrow_back.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';

class AdminSettingViewBody extends StatelessWidget {
  const AdminSettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        children: [
          SettingItem(
            onTap: () {
              // AppNavigation.navigateTo(
              //     context: context, routeName: Routes.adminProfileView);
            },
            image: AppAsset.profile,
            title: 'Profile',
          ),
          SizedBox(
            height: 8.h,
          ),
          SettingItem(
            onTap: () {
              AppNavigation.navigateTo(
                  context: context, routeName: Routes.languageSelectionScreen);
            },
            image: AppAsset.language,
            title: 'Language',
          ),
          SizedBox(
            height: 8.h,
          ),
          SettingItem(
            onTap: () {},
            image: AppAsset.redLogout,
            title: 'Logout',
            titlestyle: AppTextStyle.black400S22.copyWith(
              fontSize: 26.sp,
              color: AppColor.red,
            ),
          ),
        ],
      ),
    );
  }
}

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40.w,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: CustomArrowBack(),
        ),
        centerTitle: true,
        title: const Text('Language Selection'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(AppAsset.english, width: 30),
              title: const Text(
                'English',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Radio<String>(
                activeColor: AppColor.green,
                value: 'English',
                groupValue: _selectedLanguage,
                onChanged: (String? value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                },
              ),
            ),
            ListTile(
              leading: Image.asset(AppAsset.egyptFlag, width: 30),
              title: const Text(
                'Arabic',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Radio<String>(
                value: 'Arabic',
                groupValue: _selectedLanguage,
                onChanged: (String? value) {
                  setState(() {
                    _selectedLanguage = value!;
                  });
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomButton(
                height: 35.h,
                width: double.infinity,
                title: 'Save',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.title,
    required this.image,
    this.titlestyle,
    this.onTap,
  });
  final String title;
  final String image;
  final TextStyle? titlestyle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white, // Changed the color to white
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Shadow color with opacity
              spreadRadius: 2, // Spread of the shadow
              blurRadius: 8, // Blurring effect
              offset: const Offset(0, 4), // Position of the shadow (x, y)
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              title,
              style: titlestyle ??
                  AppTextStyle.black400S22.copyWith(fontSize: 26.sp),
            ),
            const Spacer(),
            SvgPicture.asset(image)
          ],
        ),
      ),
    );
  }
}
