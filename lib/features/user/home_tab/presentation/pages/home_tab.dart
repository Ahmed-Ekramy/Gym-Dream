import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_dream/generated/l10n.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../core/app_text_style.dart';
import '../../../history_tab/presentation/widgets/last_attend_list.dart';
import '../../../user_home_layout/presentation/manager/home_user_cubit.dart';
import '../widgets/warning_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // physics:  const NeverScrollableScrollPhysics(),
      slivers: [
        const WarningCard(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: Text(
              S.of(context).myQrCode,
              style: AppTextStyle.orange700S16,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: QrImageView(
              data: "123456",
              version: QrVersions.auto,
              size: 270.sp,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Center(
            child: Text(
              S.of(context).history,
              style: AppTextStyle.orange600S18,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Text(
              S.of(context).lastSession,
              style: AppTextStyle.gray600S14,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5.h,
          ),
        ),
        const LastAttendList(),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(),
              TextButton(
                onPressed: () {
                  HomeUserCubit.get(context).changeIndex(1);
                },
                child: Text(
                  S.of(context).seeMore,
                  style: AppTextStyle.blue600S14.copyWith(
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 5.h,
          ),
        ),
      ],
    );
  }
}
