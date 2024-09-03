import 'package:flutter/material.dart';
import 'package:gym_dream/common/helper/naviagtion_extentaions.dart';
import 'package:gym_dream/common/routes/route.dart';
import 'package:gym_dream/core/app_text_style.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeView extends StatefulWidget {
  const QrCodeView({super.key});

  @override
  State<QrCodeView> createState() => _QrCodeViewState();
}

class _QrCodeViewState extends State<QrCodeView> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? qrResult;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRect(
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              qrResult != null ? 'Result: ${qrResult!.code}' : '',
              style: AppTextStyle.black700S18,
            ),
          ),
        ),
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      setState(() {
        qrResult = scanData;
      });

      bool isUserTrusted = await _checkUserInDatabase(scanData.code);

      if (isUserTrusted) {
        AppNavigation.navigateTo(
          context: context,
          routeName: Routes.adminTrustedUserView,
        );
      } else {
        AppNavigation.navigateTo(
          context: context,
          routeName: Routes.adminTrustedUserView,
        );
      }
    });
  }

  Future<bool> _checkUserInDatabase(String? qrCode) async {
    if (qrCode != null) {
      return qrCode ==
          'USER_123'; // Replace with your logic to check user in database
    }
    return false;
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
