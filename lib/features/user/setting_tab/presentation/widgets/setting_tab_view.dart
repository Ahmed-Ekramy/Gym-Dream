import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/features/authentication/manager/auth%20cubit/auth_cubit.dart';

import '../../../../../common/helper/naviagtion_extentaions.dart';
import '../../../../../core/app_color.dart';
import '../../../../../core/app_text_style.dart';
import 'custom_cardItem_setting.dart';

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
                itemName: ' Profile',
                iconItem: Icons.account_circle_outlined,
                onTap: () {
                  AppNavigation.navigateTo(
                      context: context, routeName: "/userProfile");
                },
              ),
              CustomCardItemSetting(
                  itemName: ' Language',
                  iconItem: Icons.translate,
                  onTap: () {
                    AppNavigation.navigateTo(
                        context: context, routeName: "/languageView");
                  }),
              CustomCardItemSetting(
                colorIcon: AppColor.redLightThan,
                textStyle: AppTextStyle.redLight400S27,
                itemName: ' Log out',
                iconItem: Icons.logout_outlined,
                onTap: () {
                  Future.delayed(
                    Duration.zero,
                    () {
                      context.read<AuthCubit>().logout();
                      AppNavigation.navigateAndRemoveUntil(
                        context: context,
                        newRoute: Routes.choosingView,
                      );
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
}
