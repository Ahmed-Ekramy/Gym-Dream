import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_cubit.dart';
import 'package:gym_dream/features/user/setting_tab/presentation/widgets/custom_card_item_setting.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../../../../../common/helper/naviagtion_extentaions.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';

class SettingTabView extends StatelessWidget {
  const SettingTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              CustomCardItemSetting(
                itemName: S.of(context).profile,
                iconItem: Icons.account_circle_outlined,
                onTap: () {
                  AppNavigation.navigateTo(
                      context: context, routeName: "/userProfile");
                },
              ),
              CustomCardItemSetting(
                  itemName: S.of(context).language,
                  iconItem: Icons.translate,
                  onTap: () {
                    AppNavigation.navigateTo(
                        context: context, routeName: "/languageView");
                  }),
              CustomCardItemSetting(
                colorIcon: AppColor.redLightThan,
                textStyle: AppTextStyle.redLight400S27,
                itemName: S.of(context).logout,
                iconItem: Icons.logout_outlined,
                onTap: () {
                  Future.delayed(
                    Duration.zero,
                    () {
                      _showLogoutConfirmationDialog(context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
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
