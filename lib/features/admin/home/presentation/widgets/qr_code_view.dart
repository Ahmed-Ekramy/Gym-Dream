import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                qrResult != null ? 'Result: ${qrResult!.code}' : '',
                style: AppTextStyle.black700S18,
              ),
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

      // bool isUserTrusted = await _checkUserInDatabase(scanData.code);

      // if (isUserTrusted) {
      //   AppNavigation.navigateTo(
      //     context: context,
      //     routeName: Routes.adminTrustedUserView,
      //   );
      // } else {
      //   AppNavigation.navigateTo(
      //     context: context,
      //     routeName: Routes.adminTrustedUserView,
      //   );
      // }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
