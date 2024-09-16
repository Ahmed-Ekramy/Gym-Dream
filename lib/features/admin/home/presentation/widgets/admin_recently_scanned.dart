import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/custom_text_and_icon_botton.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/recently_member_images.dart';
import 'package:gym_dream/features/admin/layout/presentation/manager/cubit/layout_cubit.dart';
import 'package:gym_dream/generated/l10n.dart';

class AdminRecentlyScanned extends StatefulWidget {
  const AdminRecentlyScanned({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  State<AdminRecentlyScanned> createState() => _AdminRecentlyScannedState();
}

class _AdminRecentlyScannedState extends State<AdminRecentlyScanned> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Padding(
                padding: Localizations.localeOf(context).languageCode == 'en'
                    ? EdgeInsets.only(left: 0.w)
                    : EdgeInsets.only(right: 8.w),
                child: RecentlyMemberImages(
                  title: S.of(context).recentlyScanned,
                  imageList: widget.imageList,
                  onTap: () {
                    BlocProvider.of<LayoutCubit>(context).currentIndex == 2;
                    setState(() {});
                  },
                ),
              ),
              SizedBox(width: 50.w),
              Expanded(
                child: BottomTextAndIconButton(
                  onTap: () {
                    AppNavigation.navigateTo(
                        context: context, routeName: Routes.qrCodeView);
                  },
                  title: S.of(context).scannNow,
                  textStyle: AppTextStyle.white700S14,
                  icon: SvgPicture.asset(AppAsset.scan),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

bool isValidPerson(String scanResult) {
  // compare scanResult with a valid IDs
  return scanResult == "valid_qr_code";
}
