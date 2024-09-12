import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/setting/presentation/widgets/setting_item.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

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
              AppNavigation.navigateTo(
                  context: context, routeName: Routes.adminProfileView);
            },
            image: AppAsset.profile,
            title: S.of(context).profile,
          ),
          SizedBox(
            height: 8.h,
          ),
          SettingItem(
            onTap: () {
              AppNavigation.navigateTo(
                  context: context, routeName: Routes.languageView);
            },
            image: AppAsset.language,
            title: S.of(context).language,
          ),
          SizedBox(
            height: 8.h,
          ),
          SettingItem(
            onTap: () {
              _showLogoutConfirmationDialog(context);
            },
            image: AppAsset.redLogout,
            title: S.of(context).logout,
            titlestyle: AppTextStyle.black400S22.copyWith(
              fontSize: 26.sp,
              color: AppColor.red,
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            S.of(context).logout,
            style: AppTextStyle.black600S16,
          ),
          content: Text(
            S.of(context).areYouSureYouWantToLogOut,
            style: AppTextStyle.black500S14.copyWith(
              fontSize: 12.sp,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                AppNavigation.pop(context);
              },
              child: Text(
                S.of(context).disable,
                style: AppTextStyle.orange400S10,
              ),
            ),
            GestureDetector(
              onTap: () {
                AppNavigation.pop(context);
                context.read<AuthCubit>().logout();
                AppNavigation.navigateAndRemoveUntil(
                  context: context,
                  newRoute: Routes.choosingView,
                );
              },
              child: Container(
                height: 25.h,
                width: 75.w,
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    S.of(context).confirm,
                    style: AppTextStyle.white700S14,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}


// class LanguageSelectionScreen extends StatefulWidget {
//   const LanguageSelectionScreen({super.key});

//   @override
//   _LanguageSelectionScreenState createState() =>
//       _LanguageSelectionScreenState();
// }

// class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
//   String _selectedLanguage = 'English';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leadingWidth: 40.w,
//         leading: const Padding(
//           padding: EdgeInsets.only(left: 8),
//           child: BackIcon(),
//         ),
//         centerTitle: true,
//         title: const Text('Language Selection'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 16,
//         ),
//         child: Column(
//           children: [
//             ListTile(
//               leading: Image.asset(AppAsset.english, width: 30),
//               title: const Text(
//                 'English',
//                 style: TextStyle(fontSize: 20),
//               ),
//               trailing: Radio<String>(
//                 activeColor: AppColor.green,
//                 value: 'English',
//                 groupValue: _selectedLanguage,
//                 onChanged: (String? value) {
//                   setState(() {
//                     _selectedLanguage = value!;
//                   });
//                 },
//               ),
//             ),
//             ListTile(
//               leading: Image.asset(AppAsset.egyptFlag, width: 30),
//               title: const Text(
//                 'Arabic',
//                 style: TextStyle(fontSize: 20),
//               ),
//               trailing: Radio<String>(
//                 value: 'Arabic',
//                 groupValue: _selectedLanguage,
//                 onChanged: (String? value) {
//                   setState(() {
//                     _selectedLanguage = value!;
//                   });
//                 },
//               ),
//             ),
//             const Spacer(),
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: CustomButton(
//                 height: 35.h,
//                 width: double.infinity,
//                 title: 'Save',
//                 onPressed: () {},
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

