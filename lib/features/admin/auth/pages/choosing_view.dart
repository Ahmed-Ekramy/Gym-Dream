import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/auth/widgets/dream_gym_text.dart';
import 'package:gym_dream/generated/l10n.dart';

import '../manager/choosing_contoller.dart';
import '../widgets/user_kind.dart';

class ChoosingView extends StatelessWidget {
  const ChoosingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChoosingCubit(),
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.only(top: 45.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                const DreamGymText(),
                SizedBox(
                  height: 120.h,
                ),
                Text(
                  S.of(context).chooseYourMemberShipType,
                  style: AppTextStyle.black600S18,
                ),
                SizedBox(
                  height: 45.h,
                ),
                Row(
                  children: [
                    BlocBuilder<ChoosingCubit, String>(
                      builder: (context, selectedCustomerKind) {
                        return UserKind(
                          onTap: () => context
                              .read<ChoosingCubit>()
                              .selectCustomerKind('trainee'),
                          color: selectedCustomerKind == 'trainee'
                              ? AppColor.primary
                              : AppColor.grey,
                          name: S.of(context).trainee,
                          image: AppAsset.trainee,
                          opacity: selectedCustomerKind.isEmpty ||
                                  selectedCustomerKind == 'trainee'
                              ? 1.0
                              : 0.5,
                        );
                      },
                    ),
                    const Spacer(),
                    BlocBuilder<ChoosingCubit, String>(
                      builder: (context, selectedCustomerKind) {
                        return UserKind(
                          onTap: () => context
                              .read<ChoosingCubit>()
                              .selectCustomerKind('admin'),
                          color: selectedCustomerKind == 'admin'
                              ? AppColor.primary
                              : AppColor.grey,
                          name: S.of(context).admin,
                          image: AppAsset.admin,
                          opacity: selectedCustomerKind.isEmpty ||
                                  selectedCustomerKind == 'admin'
                              ? 1.0
                              : 0.5,
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 125.h,
                ),
                BlocBuilder<ChoosingCubit, String>(
                  builder: (context, selectedCustomerKind) {
                    return selectedCustomerKind.isNotEmpty
                        ? CustomButton(
                            width: double.infinity,
                            title: S.of(context).next,
                            onPressed: () {
                              context
                                  .read<ChoosingCubit>()
                                  .navigateToSelectedPage(context);
                            },
                          )
                        : const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
