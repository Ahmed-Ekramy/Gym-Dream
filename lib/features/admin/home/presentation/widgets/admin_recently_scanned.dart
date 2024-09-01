import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_asset.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/admin_users_images.dart';
import 'package:gym_dream/features/admin/home/presentation/widgets/custom_text_and_icon_botton.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AdminRecentlyScanned extends StatelessWidget {
  const AdminRecentlyScanned({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          AdminUsersImages(
            title: 'Recently scanned',
            imageList: imageList,
          ),
          SizedBox(width: 50.w),
          Expanded(
            child: BottomTextAndIconButton(
              onTap: () {
                AppNavigation.navigateTo(
                    context: context, routeName: Routes.adminTrustedUserView);
              },
              // onTap: () => scanNow(context),
              title: 'Scan Now',
              textStyle: AppTextStyle.white700S14,
              icon: SvgPicture.asset(AppAsset.scan),
            ),
          ),
        ],
      ),
    );
  }
}

// Future<void> scanNow(BuildContext context) async {
//   String scanResult;
//   try {
//     scanResult = await FlutterBarcodeScanner.scanBarcode(
//       '#ff6666',
//       'Cancel',
//       true,
//       ScanMode.QR,
//     );
//   } on PlatformException {
//     scanResult = 'Failed to get platform version.';
//   }

//   if (scanResult.isNotEmpty && scanResult != '-1') {
//     debugPrint(scanResult);
//     bool isValid = isValidPerson(scanResult);

//     if (isValid) {
//       // If  valid,
//       // AppNavigation.navigateTo(
//       //   context: context,
//       //   routeName: Routes.desiredScreen,
//       // );
//     } else {
//       // // If not valid
//       // AppNavigation.navigateTo(
//       //   context: context,
//       //   routeName: Routes.desiredScreen,
//       // );
//     }
//   }
// }


