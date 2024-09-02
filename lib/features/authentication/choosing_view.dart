import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/common/cubit/change_language_cubit.dart';
import 'package:gym_dream/common/widgets/custom_button_widget.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_color.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/authentication/widgets/dream_gym_text.dart';
import 'package:gym_dream/generated/l10n.dart';

import 'manager/controllers/choosing_contoller.dart';
import 'widgets/user_kind.dart';

class ChoosingView extends StatelessWidget {
  const ChoosingView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChoosingCubit(),
      child: Scaffold(
        body: SafeArea(
          minimum: EdgeInsets.only(top: 45.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    height: 21.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(color: AppColor.blackOpacity4),
                    ),
                    child: BlocBuilder<LocaleCubit, Locale>(
                      builder: (context, locale) {
                        return GestureDetector(
                          onTap: () {
                            context.read<LocaleCubit>().toggleLocale();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                height: 15.h,
                                width: 20.w,
                                locale.languageCode == 'en'
                                    ? AppAsset.egyptFlag
                                    : AppAsset.usaFlag,
                              ),
                              Text(
                                locale.languageCode == 'en'
                                    ? 'العربية'
                                    : 'English',
                                style: AppTextStyle.black500S11,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const DreamGymText(),
                SizedBox(
                  height: 100.h,
                ),
                Text(
                  S.of(context).chooseYourMemberShipType,
                  style: AppTextStyle.black700S18,
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
                          index: 0,
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
                          index: 1,
                        );
                      },
                    ),
                  ],
                ),
                const Spacer(),
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
                SizedBox(
                  height: 60.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
