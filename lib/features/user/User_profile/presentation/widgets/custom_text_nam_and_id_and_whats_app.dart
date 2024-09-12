import 'package:flutter/material.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../generated/l10n.dart';

class CustomTextNamAndIdAndWhatsApp extends StatelessWidget {
  const CustomTextNamAndIdAndWhatsApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Ahmed Ekramy Fahmy',
            style: AppTextStyle.black600S18,
          ),
          Text(
            '${S.of(context).id} : 101230',
            style: AppTextStyle.brown600S18,
          ),
          Text(
            '${S.of(context).whatsAppNumber} : 0123456789',
            style: AppTextStyle.black500S14,
          ),
        ],
      ),
    );
  }
}